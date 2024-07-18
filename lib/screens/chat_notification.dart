import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class ChatNotification extends StatelessWidget {
  ChatNotification({super.key});
  final ChatNotificationController chatNotificationController =
      Get.put(ChatNotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        text: "Notification",
                        textStyle: KTextStyles().normal(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            textColor: KColors.kBlack)),
                    Icon(null)
                  ],
                ),
              ),
              heightBox(.02),
              CustomText(
                  text: "Explore Community",
                  textStyle: KTextStyles()
                      .normal(fontSize: 17, fontWeight: FontWeight.bold)),
              heightBox(.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: kWidth(.12),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/profilepic.png",
                              height: kHeight(.065),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: kHeight(.01),
                                child: Icon(
                                  Icons.add,
                                  size: kHeight(.02),
                                ),
                              ),
                            )
                          ],
                        ),
                        CustomText(
                            text: "Jeseeka", textStyle: KTextStyles().normal())
                      ],
                    ),
                  ),
                  widthBox(.02),
                  SizedBox(
                    height: kHeight(.09),
                    width: kWidth(.72),
                    child: ListView.separated(
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CommunityPeopleBox(
                              img: chatNotificationController
                                  .communityPeople[index]["img"],
                              name: chatNotificationController
                                  .communityPeople[index]["name"]);
                        },
                        separatorBuilder: (context, index) => widthBox(.005),
                        itemCount:
                            chatNotificationController.communityPeople.length),
                  )
                ],
              ),
              heightBox(.02),
              CustomText(
                  text: "Messages",
                  textStyle: KTextStyles()
                      .normal(fontSize: 17, fontWeight: FontWeight.bold)),
              heightBox(.02),
              ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ChatTile();
                  },
                  separatorBuilder: (context, index) => heightBox(.02),
                  itemCount: 4)
            ],
          ),
        ),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Get.toNamed("/chat");
      },
      child: SizedBox(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: kHeight(.07),
                  width: kWidth(.15),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: kHeight(.08),
                        child: Image.asset(
                          "assets/images/profile1.png",
                          height: kHeight(.065),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: kHeight(.008),
                          backgroundColor: KColors.kPrimary,
                        ),
                      )
                    ],
                  ),
                ),
                widthBox(.04),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Bronty",
                        textStyle:
                            KTextStyles().normal(fontWeight: FontWeight.bold)),
                    CustomText(
                        text: "Hello!👋 John, how are you doing?",
                        textStyle:
                            KTextStyles().normal(textColor: KColors.kGrey)),
                  ],
                ),
                Spacer(),
                CustomText(
                    text: "10m ago",
                    textStyle: KTextStyles()
                        .normal(fontSize: 10, textColor: KColors.kGrey))
              ],
            ),
            Divider(
              thickness: 1,
              color: KColors.bgcolor,
            ),
          ],
        ),
      ),
    );
  }
}

class CommunityPeopleBox extends StatelessWidget {
  final String img, name;
  const CommunityPeopleBox({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(.18),
      child: Column(
        children: [
          SizedBox(
            height: kHeight(.06),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: kHeight(.06),
                  child: Image.asset(
                    img,
                    height: kHeight(.058),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: kWidth(.02)),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: kHeight(.008),
                      backgroundColor: KColors.kPrimary,
                    ),
                  ),
                )
              ],
            ),
          ),
          CustomText(text: name, textStyle: KTextStyles().normal())
        ],
      ),
    );
  }
}

class ChatNotificationController extends GetxController {
  List communityPeople = [
    {
      "img": "assets/images/profile1.png",
      "name": "Emily",
    },
    {
      "img": "assets/images/profile2.png",
      "name": "Luiz",
    },
    {
      "img": "assets/images/profile3.png",
      "name": "Brown",
    },
    {
      "img": "assets/images/profile4.png",
      "name": "Ricky",
    },
  ];
}
