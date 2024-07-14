import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Stack(
          children: [
            SizedBox(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heightBox(.06),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xff3B3B3B),
                          radius: kHeight(.02),
                          child: Icon(
                            Icons.arrow_back,
                            color: KColors.kWhite,
                          ),
                        )),
                    heightBox(.04),
                    SizedBox(
                      width: kWidth(.9),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: "Settings",
                                      textStyle: KTextStyles().normal(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          textColor: KColors.kWhite)),
                                  CustomText(
                                      text: "Customized your experience",
                                      textStyle: KTextStyles().normal(
                                          fontSize: 17,
                                          textColor: KColors.kWhite)),
                                  heightBox(.04),
                                  CircleAvatar(
                                    radius: kHeight(.05),
                                    child: Image.asset(
                                      "assets/images/profilepic.png",
                                      height: kHeight(.095),
                                    ),
                                  ),
                                  CustomText(
                                      text: "Jessica",
                                      textStyle: KTextStyles().normal(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          textColor: KColors.kWhite)),
                                ],
                              ),
                              widthBox(.2),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  heightBox(.08),
                                  CustomText(
                                      text: "View",
                                      textStyle: KTextStyles().normal(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          textColor: KColors.kWhite)),
                                  CustomText(
                                      text: "Details",
                                      textStyle: KTextStyles().normal(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          textColor: KColors.kWhite)),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff3B3B3B),
                                        borderRadius:
                                            BorderRadius.circular(kWidth(.02))),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: kWidth(.01),
                                      vertical: kWidth(.02),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.chevron_forward,
                                      color: KColors.kWhite,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          heightBox(.02),
                          Divider(
                            thickness: 0.5,
                            color: KColors.kWhite,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: kHeight(.55),
                width: context.width,
                decoration: BoxDecoration(
                    color: KColors.kWhite,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(kWidth(.02)))),
                padding: EdgeInsets.all(kWidth(.04)),
                child: Column(
                  children: [
                    ProfileTile(
                        title: "Account Settings", img: "assets/images/3.png"),
                    ProfileTile(
                        title: "Privacy Settings", img: "assets/images/9.png"),
                    Row(children: [
                      Image.asset(
                        "assets/images/6.png",
                        height: kHeight(.03),
                      ),
                      widthBox(.04),
                      CustomText(
                          text: "Notification",
                          textStyle: KTextStyles().normal(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              textColor: KColors.kBlack)),
                      Spacer(),
                      Switch(
                        trackOutlineColor:
                            WidgetStatePropertyAll(KColors.bgcolor),
                        trackColor: WidgetStatePropertyAll(KColors.kPrimary),
                        thumbColor: WidgetStatePropertyAll(KColors.kWhite),
                        value: false,
                        onChanged: (value) {},
                      )
                    ]),
                    ProfileTile(
                        title: "Profile Settings", img: "assets/images/2.png"),
                    ProfileTile(
                        title: "App Preference", img: "assets/images/9.png"),
                    ProfileTile(
                        title: "Help and Support", img: "assets/images/4.png"),
                    ProfileTile(title: "Logout", img: "assets/images/7.png"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String title, img;
  const ProfileTile({
    super.key,
    required this.title,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          img,
          height: kHeight(.03),
        ),
        widthBox(.04),
        CustomText(
            text: title,
            textStyle: KTextStyles().normal(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                textColor: KColors.kBlack)),
        Spacer(),
        Icon(CupertinoIcons.chevron_forward),
        heightBox(.07),
      ],
    );
  }
}
