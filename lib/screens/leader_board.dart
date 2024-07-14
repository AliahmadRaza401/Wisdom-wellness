import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightBox(.06),
              SizedBox(
                width: kWidth(.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: CircleAvatar(
                          backgroundColor: KColors.bgcolor,
                          radius: kHeight(.025),
                          child: Icon(
                            Icons.arrow_back,
                            color: KColors.kBlack,
                          ),
                        )),
                    CustomText(
                        text: "Leader Board",
                        textStyle: KTextStyles().normal(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            textColor: KColors.kBlack)),
                    Icon(null),
                  ],
                ),
              ),
              heightBox(.02),
              Container(
                decoration: BoxDecoration(
                    color: KColors.bgcolor,
                    borderRadius: BorderRadius.circular(kWidth(.1))),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: KColors.kPrimary,
                          borderRadius: BorderRadius.circular(kWidth(.1)),
                        ),
                        padding: EdgeInsets.all(kWidth(.02)),
                        alignment: Alignment.center,
                        child: CustomText(
                            text: "Today",
                            textStyle: KTextStyles().normal(
                                fontSize: 16, textColor: KColors.kBlack)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kWidth(.1)),
                        ),
                        padding: EdgeInsets.all(kWidth(.02)),
                        alignment: Alignment.center,
                        child: CustomText(
                            text: "Yesterday",
                            textStyle: KTextStyles().normal(
                                fontSize: 16, textColor: KColors.kBlack)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kWidth(.1)),
                        ),
                        padding: EdgeInsets.all(kWidth(.02)),
                        alignment: Alignment.center,
                        child: CustomText(
                            text: "7 Days Avg",
                            textStyle: KTextStyles().normal(
                                fontSize: 16, textColor: KColors.kBlack)),
                      ),
                    ),
                  ],
                ),
              ),
              heightBox(.02),
              CustomText(
                  text: "Steps Today",
                  textStyle: KTextStyles().normal(
                      fontSize: 16,
                      textColor: KColors.kBlack,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check,
                    color: KColors.kPrimary,
                    size: kHeight(.04),
                  ),
                  CustomText(
                      text: "12,950",
                      textStyle: KTextStyles().normal(
                          fontSize: 50,
                          textColor: KColors.kBlack,
                          fontWeight: FontWeight.bold)),
                  Icon(
                    CupertinoIcons.chevron_forward,
                  ),
                ],
              ),
              SizedBox(
                width: kWidth(.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "Steps Today",
                        textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kGrey,
                            fontWeight: FontWeight.bold)),
                    CustomText(
                        text: "651cals.",
                        textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kGrey,
                            fontWeight: FontWeight.bold)),
                    CustomText(
                        text: "2floors",
                        textStyle: KTextStyles().normal(
                            fontSize: 16,
                            textColor: KColors.kGrey,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              heightBox(.06),
              ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return LeaderBoardTile();
                  },
                  separatorBuilder: (context, index) => heightBox(.01),
                  itemCount: 4),
            ],
          ),
        ),
      ),
    );
  }
}

class LeaderBoardTile extends StatelessWidget {
  const LeaderBoardTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: "1",
                  textStyle: KTextStyles()
                      .normal(fontSize: 25, fontWeight: FontWeight.bold)),
              widthBox(.02),
              CircleAvatar(
                backgroundColor: KColors.kBlack,
                radius: kHeight(.04),
                child: Image.asset(
                  "assets/images/profilepic.png",
                  height: kHeight(.075),
                ),
              ),
              widthBox(.04),
              CustomText(
                  text: "masami nakada",
                  textStyle: KTextStyles()
                      .normal(fontSize: 18, fontWeight: FontWeight.bold)),
              widthBox(.06),
              CustomText(
                  text: "1,828 km",
                  textStyle: KTextStyles()
                      .normal(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          Divider(
            thickness: 1,
            color: KColors.bgcolor,
          )
        ],
      ),
    );
  }
}
