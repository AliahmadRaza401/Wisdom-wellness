import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Video extends StatelessWidget {
  Video({super.key});
  final VideoController controller = Get.put(VideoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            children: [
              heightBox(.06),
              KAppBar(
                title: "WISDOM",
                func: () {
                  Get.toNamed("/bottomnav");
                },
              ),
              heightBox(.06),
              SizedBox(
                height: kHeight(.7),
                width: kWidth(.9),
                child: VideoPlayer(controller.videoPlayerController),
              ),
              heightBox(.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: kHeight(.02),
                    backgroundColor: KColors.kPrimary,
                    child: GestureDetector(
                      onTap: () {
                        controller.playOrPauseVideo();
                      },
                      child: Obx(() {
                        return Icon(
                          controller.isPlaying.value
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: KColors.kWhite,
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    width: kWidth(.78),
                    child: ProgressBar(
                      timeLabelTextStyle: TextStyle(color: KColors.kPrimary),
                      baseBarColor: KColors.bgcolor,
                      bufferedBarColor: KColors.kGrey,
                      progressBarColor: KColors.kPrimary,
                      thumbColor: KColors.kPrimary,
                      progress: Duration(seconds: 10),
                      total: Duration(milliseconds: 190000),
                      timeLabelLocation: TimeLabelLocation.sides,
                      onSeek: (duration) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  RxBool isPlaying = false.obs;

  @override
  void onInit() {
    super.onInit();
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
    videoPlayerController.initialize().then((_) {
      videoPlayerController.setLooping(true);
      update();
    });
  }

  void playOrPauseVideo() {
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
      isPlaying.value = false;
    } else {
      videoPlayerController.play();
      isPlaying.value = true;
    }
    update();
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }
}
