import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hl_image_picker/hl_image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/home/main_sub_page/subtitled_headline.dart';
import 'package:offside/presentation/pages/home/profile_sub_page/profile_sub_page_controller.dart';

import 'profile_sub_page_state.dart';

class ProfileSubPage extends ConsumerStatefulWidget {
  const ProfileSubPage({super.key});

  @override
  ConsumerState createState() => _ProfileSubPageState();
}

class _ProfileSubPageState extends ConsumerState<ProfileSubPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileSubPageControllerProvider);
    if (state.loading) {
      return Center(
        child: LoadingAnimationWidget.fourRotatingDots(color: context.colorScheme.primary, size: 64),
      );
    }

    return buildProfilePage(state);
  }

  Widget buildProfilePage(ProfileSubPageState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // AdminVisible(
            //   child: FutureBuilder(
            //     future: ref.watch(getAllUsersUseCaseProvider).run(),
            //     builder: (context, snapshot) {
            //       return switch (snapshot.connectionState) {
            //         ConnectionState.waiting => LoadingAnimationWidget.fourRotatingDots(
            //             color: context.colorScheme.primary,
            //             size: 64,
            //           ),
            //         ConnectionState.done => UserDropdown(
            //             users: snapshot.data!,
            //             onChanged: (user) => ref.read(currentUserIdSettingProvider.notifier).value = user.id,
            //           ),
            //         _ => 'Done'.text,
            //       };
            //     },
            //   ),
            // ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubtitledHeadline(title: 'Profil', subtitle: 'Zarządzaj swoim profilem'),
                ElevatedButton.icon(
                  onPressed: () {
                    ref.read(profileSubPageControllerProvider.notifier).logOut().then((_) {
                      context.goNamed('login');
                    });
                  },
                  icon: const Icon(Icons.logout),
                  label: 'Wyloguj'.text,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: context.widgetThemes.sharedWidgets.destructive.foreground,
                    backgroundColor: context.widgetThemes.sharedWidgets.destructive.background,
                  ),
                ),
              ],
            ),
            const Gap(48),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    state.user!.avatar(context, ref, elevation: 6, radius: 64, fontSize: 24),
                    const Gap(24),
                    state.user!.fullName.styledText(context.textTheme.headlineSmall),
                    const Gap(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildActionButton(
                          context: context,
                          icon: Icons.edit,
                          text: 'Edytuj',
                          onPressed: null,
                        ),
                        _buildActionButton(
                          context: context,
                          icon: Icons.photo,
                          text: 'Zmień zdjęcie',
                          onPressed: () async {
                            final path = await pickImage();
                            if (path != null) {
                              ref.read(profileSubPageControllerProvider.notifier).updateProfileImage(path);
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Gap(64),
            if (state.loading) ...[
              LoadingAnimationWidget.fourRotatingDots(color: context.colorScheme.primary, size: 64),
            ],
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Usuwanie konta'),
                      content: const Text('Operacja jest nieodwracalna'),
                      actions: [
                        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Anuluj')),
                        ElevatedButton(
                          onPressed: () {
                            ref
                                .read(profileSubPageControllerProvider.notifier)
                                .removeUser()
                                .then((_) {
                                  context.goNamed('login');
                                })
                                .then((_) => context.goNamed('login'));
                          },
                          child: const Text('Usuń konto'),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.person_off),
              label: 'Usuń konto'.text,
              style: ElevatedButton.styleFrom(
                foregroundColor: context.widgetThemes.sharedWidgets.destructive.foreground,
                backgroundColor: context.widgetThemes.sharedWidgets.destructive.background,
              ),
            ),
            const Gap(64),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback? onPressed,
  }) {
    return FilledButton.tonalIcon(onPressed: onPressed, icon: Icon(icon, size: 18), label: text.text);
  }

  Future<String?> pickImage() async {
    final image = await HLImagePicker().openPicker(
      pickerOptions: const HLPickerOptions(
        maxSelectedAssets: 1,
        convertHeicToJPG: true,
        convertLivePhotosToJPG: true,
        enablePreview: false,
        mediaType: MediaType.image,
      ),
      cropOptions: const HLCropOptions(
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
        compressFormat: CompressFormat.jpg,
      ),
      cropping: true,
    );

    return image.isNotEmpty ? image.first.path : null;
  }
}
