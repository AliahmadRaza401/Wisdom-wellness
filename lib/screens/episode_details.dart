import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class EpisodeDetails extends StatelessWidget {
  EpisodeDetails({super.key});
  final EpisodeDetailsController episodeDetailsController =
      Get.put(EpisodeDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              heightBox(.06),
              KAppBarText(
                title: "Season 1",
                img: "assets/images/notification.png",
              ),
              heightBox(.02),
              Ktextfield(
                  color: KColors.bgcolor.withOpacity(.2),
                  lable: "Search For Podcasts",
                  img: "assets/images/search.png",
                  controller: TextEditingController()),
              heightBox(.02),
              SizedBox(
                width: kWidth(.9),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: "Episode Five Videos",
                            textStyle: KTextStyles().normal(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        CustomText(
                            text: "See All",
                            textStyle: KTextStyles().normal(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                textColor: KColors.kPrimary)),
                      ],
                    ),
                    heightBox(.02),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return EpisodeBox(
                            title: episodeDetailsController.details[index]
                                ["title"],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return heightBox(.02);
                        },
                        itemCount: episodeDetailsController.details.length),
                    heightBox(.1),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EpisodeBox extends StatelessWidget {
  final String title;
  const EpisodeBox({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: KColors.kWhite,
          borderRadius: BorderRadius.circular(kWidth(.04)),
          boxShadow: [
            BoxShadow(
                color: KColors.kGrey.withOpacity(.5),
                blurRadius: 0.5,
                offset: const Offset(0.0, 0.75))
          ]),
      padding: EdgeInsets.only(bottom: kHeight(.01)),
      child: Row(
        children: [
          SizedBox(
            height: kHeight(.1),
            width: kWidth(.3),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kWidth(.02)),
                  child: Image.asset(
                    "assets/images/banner2.png",
                    height: kHeight(.1),
                    width: kWidth(.3),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: kHeight(.01), left: kWidth(.2)),
                  child: CircleAvatar(
                    radius: kWidth(.03),
                    backgroundColor: KColors.kPrimary,
                    child: const Icon(
                      Icons.play_arrow,
                      color: KColors.kWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          widthBox(.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: title,
                  textStyle: KTextStyles().normal(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  )),
              heightBox(.005),
              CustomText(
                  text: "Lorem Ipsum Dolor..",
                  textStyle: KTextStyles().normal(
                    fontSize: 12,
                  )),
              heightBox(.005),
              Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: KColors.kGrey,
                    size: kHeight(.02),
                  ),
                  widthBox(.01),
                  CustomText(
                      text: "03:30s",
                      textStyle: KTextStyles().normal(
                        fontSize: 12,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class EpisodeDetailsController extends GetxController {
  List details = [
    {"title": "Introduction"},
    {"title": "Transform Your Fitness "},
    {"title": "Fitness Made Fun and Easy"},
    {"title": "Achieve Your Fitness Dreams"},
    {"title": "Discover Your Strength"},
  ];
}