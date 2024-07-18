import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Feeds extends StatelessWidget {
  const Feeds({super.key});

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
                title: "Feeds",
                img: "assets/images/6.png",
              ),
              heightBox(.04),
              ListView.separated(
                  padding: const EdgeInsets.all(0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const FeedBox();
                  },
                  separatorBuilder: (context, index) => heightBox(.04),
                  itemCount: 4)
            ],
          ),
        ),
      ),
    );
  }
}

class FeedBox extends StatelessWidget {
  const FeedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            width: kWidth(.9),
            child: Row(
              children: [
                CircleAvatar(
                  radius: kHeight(.03),
                  child: Image.asset(
                    "assets/images/profilepic.png",
                    height: kHeight(.055),
                  ),
                ),
                widthBox(.04),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: kWidth(.7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              text: "victorcarraz139",
                              textStyle: KTextStyles().normal(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  textColor: KColors.kBlack)),
                          CustomText(
                              text: "1h ago",
                              textStyle: KTextStyles().normal(
                                  fontSize: 12, textColor: KColors.kBlack)),
                        ],
                      ),
                    ),
                    CustomText(
                        text: "Loremipsum @victorcarraz139",
                        textStyle: KTextStyles().normal(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            textColor: KColors.kBlack)),
                  ],
                ),
              ],
            ),
          ),
          heightBox(.02),
          Container(
            width: kWidth(.9),
            decoration: BoxDecoration(
                border: Border.all(color: KColors.kGrey.withOpacity(.5)),
                borderRadius: BorderRadius.circular(
                  kWidth(.04),
                ),
                color: KColors.kWhite),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kWidth(.04)),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/event-banner.png"),
                      Padding(
                        padding: EdgeInsets.only(top: kHeight(.08)),
                        child: Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: kWidth(.05),
                            backgroundColor: KColors.kPrimary,
                            child: const Icon(
                              Icons.play_arrow,
                              color: KColors.kWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                heightBox(.02),
                SizedBox(
                  width: kWidth(.85),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/socialicon1.png",
                            height: kHeight(.025),
                          ),
                          widthBox(.02),
                          Image.asset("assets/images/socialicon2.png",
                              height: kHeight(.025)),
                          widthBox(.02),
                          Image.asset("assets/images/socialicon3.png",
                              height: kHeight(.025)),
                          const Spacer(),
                          Image.asset("assets/images/socialicon4.png",
                              height: kHeight(.025)),
                        ],
                      ),
                      heightBox(.01),
                      CustomRichText(
                        focusPosition: FocusPosition.start,
                        normalText: "views",
                        focusedText: "1.3k ",
                        nextpage: () {},
                      ),
                      heightBox(.005),
                      CustomText(
                          text: "Victor carraz feel chill for helping the poor",
                          textStyle: KTextStyles().normal()),
                      heightBox(.005),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              text: "2.4k likes",
                              textStyle: KTextStyles().normal()),
                          CustomText(
                              text: "208 Comments",
                              textStyle: KTextStyles().normal()),
                        ],
                      ),
                      heightBox(.005),
                      CustomText(
                          text: "2 days ago",
                          textStyle: KTextStyles().normal()),
                      heightBox(.02),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
