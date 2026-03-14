import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/listing.dart';

part 'post_event.freezed.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.started() = PostStarted;
  const factory PostEvent.categorySelected(int categoryId) = PostCategorySelected;
  const factory PostEvent.locationSelected(int locationId, String locationPath) = PostLocationSelected;
  const factory PostEvent.submit(ListingPayload payload, List<String> photoPaths) = PostSubmit;
}
