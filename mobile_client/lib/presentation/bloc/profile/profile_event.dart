import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = ProfileStarted;
  const factory ProfileEvent.updateProfile({
    String? displayName,
    int? locationId,
  }) = ProfileUpdateRequested;
  const factory ProfileEvent.loadSecurityInfo() = ProfileLoadSecurityInfo;
  const factory ProfileEvent.changePassword({
    required String currentPassword,
    required String newPassword,
  }) = ProfileChangePassword;
  const factory ProfileEvent.setPassword({
    required String newPassword,
  }) = ProfileSetPassword;
  const factory ProfileEvent.unlinkTelegram() = ProfileUnlinkTelegram;
  const factory ProfileEvent.deleteAccount() = ProfileDeleteAccount;
  const factory ProfileEvent.logout() = ProfileLogout;
}
