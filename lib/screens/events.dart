import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Events extends StatelessWidget {
  const Events({super.key});

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
                title: "Events",
                img: "assets/images/6.png",
              ),
              heightBox(.02),
              CustomText(
                  text: "Stay Connected with Our Community",
                  textStyle: KTextStyles()
                      .normal(fontSize: 17, fontWeight: FontWeight.w500)),
              heightBox(.005),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: kWidth(.4),
                  child: Row(
                    children: [
                      CustomText(
                          text: "2024, March",
                          textStyle: KTextStyles().normal(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      const Icon(CupertinoIcons.chevron_down)
                    ],
                  ),
                ),
              ),
              heightBox(.005),
              Container(
                  decoration: BoxDecoration(
                      color: KColors.kWhite,
                      borderRadius: BorderRadius.circular(kWidth(.04)),
                      boxShadow: [
                        BoxShadow(
                            color: KColors.kGrey.withOpacity(.5),
                            blurRadius: 0.5,
                            offset: const Offset(0.0, 0.75))
                      ]),
                  padding: EdgeInsets.only(
                      bottom: kHeight(.01),
                      left: kWidth(.02),
                      right: kWidth(.02)),
                  child: SizedBox(
                    height: kHeight(.08),
                    width: kWidth(.9),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (context, index) {
                          return const DateBox();
                        },
                        separatorBuilder: (context, index) => widthBox(.02),
                        itemCount: 19),
                  )),
              heightBox(.01),
              Divider(
                thickness: 1,
                color: KColors.kGrey.withOpacity(.5),
              ),
              heightBox(.01),
              SizedBox(
                width: kWidth(.9),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: "Upcoming Events",
                            textStyle: KTextStyles().normal(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        CustomText(
                            text: "See All",
                            textStyle: KTextStyles().normal(
                              fontSize: 14,
                            )),
                      ],
                    ),
                    heightBox(.02),
                    Row(
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
                            CustomText(
                                text: "victorcarraz139",
                                textStyle: KTextStyles().normal(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    textColor: KColors.kBlack)),
                            CustomText(
                                text: "Loremipsum @victorcarraz139",
                                textStyle: KTextStyles().normal(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    textColor: KColors.kBlack)),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomText(
                                text: "1h ago",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12, textColor: KColors.kBlack)),
                            heightBox(.005),
                            CustomText(
                                text: "23May, 2024",
                                textStyle: KTextStyles().normal(
                                    fontSize: 12, textColor: KColors.kBlack)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              heightBox(.02),
              SizedBox(
                height: kHeight(.25),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/event-banner.png",
                      width: context.width,
                      height: kHeight(.2),
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: kHeight(.14),
                      ),
                      child: Center(
                        child: Container(
                          height: kHeight(.08),
                          width: kWidth(.8),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(color: KColors.kGrey, blurRadius: 5)
                              ],
                              color: KColors.kWhite,
                              borderRadius: BorderRadius.circular(kWidth(.02))),
                          padding: EdgeInsets.symmetric(
                              vertical: kWidth(.02), horizontal: kWidth(.04)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: kWidth(.2),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        "assets/images/location-05.png"),
                                    CustomText(
                                        text: "Location",
                                        textStyle:
                                            KTextStyles().normal(fontSize: 12))
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                thickness: 1,
                                color: KColors.kGrey.withOpacity(.5),
                              ),
                              SizedBox(
                                width: kWidth(.2),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/calendar.png"),
                                    CustomText(
                                        text: "Fri, 24 May",
                                        textStyle:
                                            KTextStyles().normal(fontSize: 12))
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                thickness: 1,
                                color: KColors.kGrey.withOpacity(.5),
                              ),
                              PrimaryButton(
                                height: .045,
                                width: .2,
                                text: "RSVP",
                                function: () {},
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              heightBox(.01),
              SizedBox(
                width: kWidth(.9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Hey You Live",
                        textStyle: KTextStyles().normal(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            textColor: KColors.kBlack)),
                    heightBox(.005),
                    CustomText(
                        alignText: TextAlign.left,
                        maxLines: 3,
                        text:
                            "Hey you! It’s time we meet again- to surrender, to believe, and to own every chapter of our stories. Please complet..",
                        textStyle: KTextStyles()
                            .normal(fontSize: 15, textColor: KColors.kBlack)),
                    heightBox(.005),
                    Container(
                      decoration: BoxDecoration(
                          color: KColors.kRed,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(kWidth(.02)))),
                      padding: EdgeInsets.only(right: kWidth(.01)),
                      child: Container(
                        decoration: BoxDecoration(
                            color: KColors.kPrimary,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(kWidth(.02)))),
                        padding: EdgeInsets.all(kWidth(.01)),
                        child: CustomText(
                            text: "Add to Calendar",
                            textStyle: KTextStyles().normal(
                                textColor: KColors.kWhite, fontSize: 12)),
                      ),
                    ),
                    heightBox(.015),
                    Row(
                      children: [
                        const Icon(Icons.more_vert_sharp),
                        const Spacer(),
                        CustomText(
                            text: "12", textStyle: KTextStyles().normal()),
                        widthBox(.005),
                        Image.asset("assets/images/message-square.png"),
                      ],
                    )
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

class DateBox extends StatelessWidget {
  const DateBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CustomText(
              text: "SAT",
              textStyle: KTextStyles()
                  .normal(fontSize: 12, fontWeight: FontWeight.w400)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kWidth(.02)),
                color: KColors.kPrimary.withOpacity(.5)),
            padding: EdgeInsets.all(kWidth(.03)),
            child: CustomText(
                text: "17",
                textStyle: KTextStyles().normal(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
