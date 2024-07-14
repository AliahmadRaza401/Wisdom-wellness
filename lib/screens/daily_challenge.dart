import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wisdom_and_wellness/screens/daily_challenge_Controller.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class DailyChallenge extends StatelessWidget {
  DailyChallenge({super.key});
  final DailyChallengeController dailyChallengeController =
      Get.put(DailyChallengeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: kHeight(.02)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.0)), // Adjust border radius as needed
          color: Colors.white, // Adjust background color as needed
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Center(
                child: OutlineButton(
                  width: .4,
                  borderRadius: .03, // Adjust button border radius
                  function: () {},
                  text: "End Challenge",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Center(
                child: PrimaryButton(
                  width: .4,
                  function: () {
                    Get.toNamed("/acceptance");
                  },
                  text: "Push Challenge",
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "Hey Emily,",
                        textStyle: KTextStyles()
                            .normal(fontSize: 24, fontWeight: FontWeight.bold)),
                    Image.asset(
                      "assets/images/Doorbell.png",
                      height: kHeight(.04),
                    ),
                  ],
                ),
                heightBox(.01),
                Obx(() {
                  return dailyChallengeController.selectedIndex.value == 0
                      ? SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: "Description",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                              heightBox(.02),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: KColors.kGrey.withOpacity(.5)),
                                  color: KColors.kWhite,
                                  borderRadius:
                                      BorderRadius.circular(kWidth(.08)),
                                ),
                                padding: EdgeInsets.all(kWidth(.04)),
                                child: CustomText(
                                    maxLines: 7,
                                    alignText: TextAlign.left,
                                    text:
                                        "Improve your sleep quality with our 30-day Sleeping Challenge! Each day, follow simple tips and exercises designed to help you establish a consistent sleep routine. Track your progress and enjoy the benefits of better rest and rejuvenation.4o",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 14,
                                        textColor: KColors.kGrey)),
                              ),
                            ],
                          ),
                        )
                      : heightBox(.005);
                }),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.05),
                  width: kWidth(.9),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return CategoryBox(
                          title: dailyChallengeController.user[index]["type"],
                          index: index,
                          controller: dailyChallengeController,
                        );
                      },
                      separatorBuilder: (context, index) => widthBox(.045),
                      itemCount: dailyChallengeController.user.length),
                ),
                heightBox(.02),
                Obx(() {
                  switch (dailyChallengeController.selectedIndex.value) {
                    case 0:
                      return DailyDataWidget();
                    case 1:
                      return WeeklyDataWidget();
                    case 2:
                      return MonthlyDataWidget();
                    default:
                      return DailyDataWidget();
                  }
                }),
                heightBox(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DailyDataWidget extends StatelessWidget {
  const DailyDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: kHeight(.35),
            width: kWidth(.9),
            decoration: BoxDecoration(
                color: Color(0xffD0E6A6),
                borderRadius: BorderRadius.circular(kWidth(.04))),
            child: Column(
              children: [
                heightBox(.03),
                CustomText(
                    maxLines: 7,
                    alignText: TextAlign.left,
                    text: "Sleep Analysis",
                    textStyle: KTextStyles().normal(
                        fontSize: 25,
                        textColor: KColors.kBlack,
                        fontWeight: FontWeight.bold)),
                heightBox(.02),
                Row(
                  children: [
                    widthBox(.04),
                    CircularPercentIndicator(
                      radius: 140.0,
                      lineWidth: 10.0,
                      percent: 0.8,
                      center: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              maxLines: 7,
                              alignText: TextAlign.left,
                              text: "Quality",
                              textStyle: KTextStyles().normal(
                                  fontSize: 14, textColor: KColors.kGrey)),
                          CustomText(
                              maxLines: 7,
                              alignText: TextAlign.left,
                              text: "80.4 %",
                              textStyle: KTextStyles().normal(
                                  fontSize: 25,
                                  textColor: KColors.kBlack,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Color(0xffF2707A),
                      backgroundColor: KColors.kWhite,
                    ),
                    widthBox(.06),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            alignText: TextAlign.left,
                            text: "7h 30m",
                            textStyle: KTextStyles().normal(
                                fontSize: 25,
                                textColor: KColors.kBlack,
                                fontWeight: FontWeight.bold)),
                        CustomText(
                            alignText: TextAlign.left,
                            text: "Sleep Durations",
                            textStyle: KTextStyles().normal(
                                fontSize: 16, textColor: KColors.kGrey)),
                        CustomText(
                            alignText: TextAlign.left,
                            text: "Slightly better than yesterday",
                            textStyle: KTextStyles()
                                .normal(fontSize: 6, textColor: KColors.kGrey)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          heightBox(.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: kHeight(.225),
                width: kWidth(.43),
                decoration: BoxDecoration(
                    color: Color(0xffD0E6A6),
                    borderRadius: BorderRadius.circular(kWidth(.04))),
                padding: EdgeInsets.all(
                  kWidth(.04),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(
                        maxLines: 7,
                        alignText: TextAlign.left,
                        text: "More Self love & Fulfilment",
                        textStyle: KTextStyles().normal(
                            fontSize: 17,
                            textColor: KColors.kBlack,
                            fontWeight: FontWeight.bold)),
                    CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 10.0,
                      percent: 0.8,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              maxLines: 7,
                              alignText: TextAlign.left,
                              text: "80%",
                              textStyle: KTextStyles().normal(
                                  fontSize: 15,
                                  textColor: KColors.kBlack,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Color(0xffF2707A),
                      backgroundColor: KColors.kWhite,
                    ),
                  ],
                ),
              ),
              PercentBox(),
            ],
          ),
        ],
      ),
    );
  }
}

class WeeklyDataWidget extends StatelessWidget {
  const WeeklyDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: kHeight(.35),
            width: kWidth(.9),
            decoration: BoxDecoration(
                color: Color(0xffD0E6A6),
                borderRadius: BorderRadius.circular(kWidth(.04))),
            child: Column(
              children: [
                heightBox(.03),
                CustomText(
                    maxLines: 7,
                    alignText: TextAlign.left,
                    text: "Nutrition",
                    textStyle: KTextStyles().normal(
                        fontSize: 25,
                        textColor: KColors.kBlack,
                        fontWeight: FontWeight.bold)),
                heightBox(.02),
                Row(
                  children: [
                    widthBox(.04),
                    CircularPercentIndicator(
                      radius: 140.0,
                      lineWidth: 10.0,
                      percent: 0.51,
                      center: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              maxLines: 7,
                              alignText: TextAlign.left,
                              text: "Quality",
                              textStyle: KTextStyles().normal(
                                  fontSize: 14, textColor: KColors.kGrey)),
                          CustomText(
                              maxLines: 7,
                              alignText: TextAlign.left,
                              text: "50.19 %",
                              textStyle: KTextStyles().normal(
                                  fontSize: 25,
                                  textColor: KColors.kBlack,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Color(0xffD48A73),
                      backgroundColor: KColors.kWhite,
                    ),
                    widthBox(.1),
                    SizedBox(
                      height: kHeight(.2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomRichText(
                            focusPosition: FocusPosition.start,
                            focusedFontSize: 25,
                            normalFontSize: 14,
                            normalText: "kcal",
                            focusedText: "1698",
                            nextpage: () {},
                          ),
                          CustomText(
                              alignText: TextAlign.left,
                              text: "Consumed",
                              textStyle: KTextStyles().normal(
                                fontSize: 13,
                                textColor: KColors.kBlack,
                              )),
                          CustomRichText(
                            focusPosition: FocusPosition.start,
                            focusedFontSize: 25,
                            normalFontSize: 14,
                            normalText: "kcal",
                            focusedText: "1882",
                            nextpage: () {},
                          ),
                          CustomText(
                              alignText: TextAlign.left,
                              text: "Remaining",
                              textStyle: KTextStyles().normal(
                                fontSize: 13,
                                textColor: KColors.kBlack,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          heightBox(.02),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(0),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return PercentBox();
            },
          )
        ],
      ),
    );
  }
}

class MonthlyDataWidget extends StatelessWidget {
  const MonthlyDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: kHeight(.35),
            width: kWidth(.9),
            decoration: BoxDecoration(
                color: Color(0xffD0E6A6),
                borderRadius: BorderRadius.circular(kWidth(.04))),
            child: Column(
              children: [
                heightBox(.03),
                CustomText(
                    maxLines: 7,
                    alignText: TextAlign.left,
                    text: "Heart Rate",
                    textStyle: KTextStyles().normal(
                        fontSize: 25,
                        textColor: KColors.kBlack,
                        fontWeight: FontWeight.bold)),
                heightBox(.02),
                Row(
                  children: [
                    widthBox(.04),
                    CircularPercentIndicator(
                      radius: 140.0,
                      lineWidth: 10.0,
                      percent: 0.8,
                      center: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              maxLines: 7,
                              alignText: TextAlign.left,
                              text: "Quality",
                              textStyle: KTextStyles().normal(
                                  fontSize: 14, textColor: KColors.kGrey)),
                          CustomText(
                              maxLines: 7,
                              alignText: TextAlign.left,
                              text: "82.09 %",
                              textStyle: KTextStyles().normal(
                                  fontSize: 25,
                                  textColor: KColors.kBlack,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Color(0xffD48A73),
                      backgroundColor: KColors.kWhite,
                    ),
                    widthBox(.1),
                    SizedBox(
                      height: kHeight(.2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomRichText(
                            focusPosition: FocusPosition.start,
                            focusedFontSize: 25,
                            normalFontSize: 14,
                            normalText: "bpm",
                            focusedText: "74",
                            nextpage: () {},
                          ),
                          CustomText(
                              alignText: TextAlign.left,
                              text: "Avg heart rate",
                              textStyle: KTextStyles().normal(
                                fontSize: 13,
                                textColor: KColors.kBlack,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          heightBox(.02),
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return PercentBox();
            },
          )
        ],
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final String title;
  final int index;
  final DailyChallengeController controller;
  const CategoryBox({
    super.key,
    required this.title,
    required this.index,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () {
          controller.selectedIndex(index);
        },
        child: Container(
          height: kHeight(.05),
          width: kWidth(.25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kWidth(1)),
            color: controller.selectedIndex.value == index
                ? KColors.kPrimary
                : KColors.bgcolor,
          ),
          alignment: Alignment.center,
          child: CustomText(
              text: title,
              textStyle: KTextStyles()
                  .normal(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
      );
    });
  }
}

class PercentBox extends StatelessWidget {
  const PercentBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(.225),
      width: kWidth(.43),
      decoration: BoxDecoration(
          color: Color(0xffD0E6A6),
          borderRadius: BorderRadius.circular(kWidth(.04))),
      padding: EdgeInsets.all(
        kWidth(.04),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichText(
            focusPosition: FocusPosition.start,
            focusedFontSize: 25,
            normalFontSize: 14,
            normalText: "kcal",
            focusedText: "1698",
            nextpage: () {},
          ),
          CustomText(
              maxLines: 7,
              alignText: TextAlign.left,
              text: "Consumed",
              textStyle: KTextStyles().normal(
                fontSize: 13,
                textColor: KColors.kBlack,
              )),
          heightBox(.02),
          Align(
            alignment: Alignment.bottomRight,
            child: CircularPercentIndicator(
              radius: 80.0,
              lineWidth: 10.0,
              percent: 0.8,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      maxLines: 7,
                      alignText: TextAlign.left,
                      text: "80%",
                      textStyle: KTextStyles().normal(
                          fontSize: 15,
                          textColor: KColors.kBlack,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Color(0xffF2707A),
              backgroundColor: KColors.kWhite,
            ),
          ),
        ],
      ),
    );
  }
}
