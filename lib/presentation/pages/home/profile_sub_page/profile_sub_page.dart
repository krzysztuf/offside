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

class ProfileSubPage extends ConsumerStatefulWidget {
  const ProfileSubPage({super.key});

  @override
  ConsumerState createState() => _ProfileSubPageState();
}

class _ProfileSubPageState extends ConsumerState<ProfileSubPage> {
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileSubPageControllerProvider);
    if (state.loading) {
      return Center(
        child: LoadingAnimationWidget.fourRotatingDots(color: context.colorScheme.primary, size: 64),
      );
    }

    return buildProfilePage(state.user!);
  }

  Widget buildProfilePage(User user) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SubtitledHeadline(
              title: 'Profil',
              subtitle: 'Zarządzaj swoim profilem',
            ),
            const Gap(48),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    user.avatar(
                      context,
                      elevation: 6,
                      radius: 64,
                    ),
                    const Gap(24),
                    user.fullName.styledText(context.textTheme.headlineSmall),
                    const Gap(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildActionButton(
                          context: context,
                          icon: Icons.edit,
                          text: 'Edytuj',
                          onPressed: () {},
                        ),
                        _buildActionButton(
                          context: context,
                          icon: Icons.photo,
                          text: 'Zmień zdjęcie',
                          onPressed: () async {
                            final path = await pickImage();
                            if (path != null) {
                              await cropImage(path);
                              setState(() => imagePath = path);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return FilledButton.tonalIcon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: text.text,
    );
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
        cropping: true);

    return image.isNotEmpty ? image.first.path : null;
  }

  Future<void> cropImage(String path) async {
    // await Future.delayed(200.milliseconds);
    // log('cropping image: $path');
    // try {
    //   final image = await HLImagePicker().openCropper(
    //     path,
    //     cropOptions: const HLCropOptions(
    //       aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
    //       compressFormat: CompressFormat.jpg,
    //     ),
    //   );
    //
    //   log('cropped image: ${image.path}');
    //
    //   setState(() => imagePath = image.path);
    // } catch (e) {
    //   log('error cropping image: $e');
    // }
  }
}
