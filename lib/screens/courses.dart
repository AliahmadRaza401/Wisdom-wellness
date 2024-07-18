import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(.06),
                KAppBarText(
                  title: "Courses and Challenges",
                  img: "assets/images/6.png",
                ),
                heightBox(.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/walkingman.png",
                            height: kHeight(.025),
                          ),
                          CustomText(
                              text: "Monthly Free Challenge",
                              textStyle: KTextStyles().normal(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    CustomText(
                        text: "See All",
                        textStyle: KTextStyles().normal(
                          fontSize: 14,
                        )),
                  ],
                ),
                heightBox(.02),
                ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Get.toNamed("/dailychallenge");
                          },
                          child: const MonthlyFreeChallenge());
                    },
                    separatorBuilder: (context, index) => heightBox(.02),
                    itemCount: 3),
                heightBox(.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/diamond.png",
                            height: kHeight(.025),
                          ),
                          widthBox(.01),
                          CustomText(
                              text: "Paid Courses",
                              textStyle: KTextStyles().normal(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    CustomText(
                        text: "See All",
                        textStyle: KTextStyles().normal(
                          fontSize: 14,
                        )),
                  ],
                ),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.25),
                  width: kWidth(.9),
                  child: ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const PaidCourse();
                      },
                      separatorBuilder: (context, index) => widthBox(.04),
                      itemCount: 4),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaidCourse extends StatelessWidget {
  const PaidCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(.4),
      child: Column(
        children: [
          Image.asset(
            "assets/images/coursesbox2.png",
            height: kHeight(.2),
          ),
          heightBox(.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                borderRadius: 1,
                color: KColors.kGrey,
                height: .035,
                width: .19,
                text: "Waiting",
                function: () {},
              ),
              PrimaryButton(
                borderRadius: 1,
                height: .035,
                width: .19,
                text: "Join",
                function: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class MonthlyFreeChallenge extends StatelessWidget {
  const MonthlyFreeChallenge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: KColors.kWhite,
          boxShadow: [
            BoxShadow(color: KColors.kGrey.withOpacity(.5), blurRadius: 5)
          ],
          borderRadius: BorderRadius.circular(
            kWidth(.04),
          )),
      padding: EdgeInsets.all(
        kWidth(.02),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/coursesbox.png",
            height: kHeight(.1),
          ),
          widthBox(.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: "Challenge Name",
                  textStyle: KTextStyles()
                      .normal(fontSize: 17, fontWeight: FontWeight.w600)),
              heightBox(.005),
              CustomText(
                  text: "Walk 5 km for 30 Days",
                  textStyle: KTextStyles().normal(
                    fontSize: 12,
                  )),
              heightBox(.005),
              Row(
                children: [
                  Image.asset(
                    "assets/images/calendar.png",
                    height: kHeight(.025),
                  ),
                  widthBox(.01),
                  CustomText(
                      text: "23 May",
                      textStyle: KTextStyles().normal(fontSize: 12)),
                  widthBox(.02),
                  CustomText(
                      text: "Participants",
                      textStyle: KTextStyles().normal(fontSize: 12)),
                  widthBox(.005),
                  Image.asset(
                    "assets/images/users.png",
                    height: kHeight(.025),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            "assets/images/chart.png",
            height: kHeight(.05),
          )
        ],
      ),
    );
  }
}
