import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Stack(
          children: [
            SizedBox(
              child: Center(
                child: Column(
                  children: [
                    heightBox(.06),
                    KAppBarText(
                      title: "Profile",
                      color: KColors.kWhite,
                      img: "assets/images/edit.png",
                      bgcolor: const Color(0xff3B3B3B),
                    ),
                    heightBox(.04),
                    SizedBox(
                      width: kWidth(.9),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: kHeight(.05),
                            child: Image.asset(
                              "assets/images/profilepic.png",
                              height: kHeight(.095),
                            ),
                          ),
                          widthBox(.04),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: "Jessica",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      textColor: KColors.kPrimary)),
                              CustomText(
                                  text: "California, USA",
                                  textStyle: KTextStyles().normal(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      textColor: KColors.kWhite)),
                            ],
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
                height: kHeight(.6),
                width: context.width,
                decoration: BoxDecoration(
                    color: KColors.kWhite,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(kWidth(.02)))),
                padding: EdgeInsets.all(kWidth(.04)),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.toNamed("/chatnotification");
                        },
                        child: ProfileTile(
                            title: "Messages", img: "assets/images/1.png")),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/feeds");
                      },
                      child: const ProfileTile(
                          title: "Feed Post", img: "assets/images/2.png"),
                    ),
                    const ProfileTile(
                        title: "Security & Privacy",
                        img: "assets/images/3.png"),
                    const ProfileTile(
                        title: "Support", img: "assets/images/4.png"),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed("/profilesettings");
                        },
                        child: const ProfileTile(
                            title: "Settings", img: "assets/images/5.png")),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Get.toNamed("/notification");
                      },
                      child: Row(children: [
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
                        const Spacer(),
                        Switch(
                          trackOutlineColor:
                              const WidgetStatePropertyAll(KColors.bgcolor),
                          trackColor:
                              const WidgetStatePropertyAll(KColors.kPrimary),
                          thumbColor:
                              const WidgetStatePropertyAll(KColors.kWhite),
                          value: false,
                          onChanged: (value) {},
                        )
                      ]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/login");
                      },
                      child: const ProfileTile(
                          title: "Logout", img: "assets/images/7.png"),
                    ),
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
        const Spacer(),
        const Icon(CupertinoIcons.chevron_forward),
        heightBox(.07),
      ],
    );
  }
}
