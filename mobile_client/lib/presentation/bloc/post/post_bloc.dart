import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repositories/listing_repository.dart';
import '../../../../domain/repositories/taxonomy_repository.dart';
import 'post_event.dart';
import 'post_state.dart';

export 'post_event.dart';
export 'post_state.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final ListingRepository _listingRepository;
  final TaxonomyRepository _taxonomyRepository;

  PostBloc(this._listingRepository, this._taxonomyRepository)
      : super(const PostState.initial()) {
    on<PostStarted>(_onStarted);
    on<PostCategorySelected>(_onCategorySelected);
    on<PostLocationSelected>(_onLocationSelected);
    on<PostSubmit>(_onSubmit);
  }

  Future<void> _onStarted(PostStarted event, Emitter<PostState> emit) async {
    emit(const PostState.loading());

    final catResult = await _taxonomyRepository.getCategories();
    final locResult = await _taxonomyRepository.getLocations();

    catResult.fold(
      onSuccess: (categories) {
        locResult.fold(
          onSuccess: (locations) => emit(PostState.ready(
            categories: categories,
            locations: locations,
          )),
          onFailure: (f) => emit(PostState.failure(f)),
        );
      },
      onFailure: (f) => emit(PostState.failure(f)),
    );
  }

  Future<void> _onCategorySelected(PostCategorySelected event, Emitter<PostState> emit) async {
    final currentState = state;
    if (currentState is! PostReady) return;

    final result = await _taxonomyRepository.getCategoryAttributes(event.categoryId);
    result.fold(
      onSuccess: (attrs) => emit(currentState.copyWith(attributes: attrs)),
      onFailure: (_) {},
    );
  }

  Future<void> _onLocationSelected(PostLocationSelected event, Emitter<PostState> emit) async {
    // Location selection is handled in UI state; this event is for future use.
  }

  Future<void> _onSubmit(PostSubmit event, Emitter<PostState> emit) async {
    emit(const PostState.submitting());

    // Step 1: Create the listing
    final result = await _listingRepository.create(event.payload);
    await result.fold(
      onSuccess: (listing) async {
        // Step 2: Upload photos sequentially
        if (event.photoPaths.isNotEmpty) {
          emit(const PostState.submitting(statusMessage: 'Uploading photos...'));
          for (final path in event.photoPaths) {
            await _listingRepository.uploadMedia(listing.id, path);
          }
        }
        emit(PostState.success(listing));
      },
      onFailure: (f) async => emit(PostState.failure(f)),
    );
  }
}
