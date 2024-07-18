import 'package:flutter/cupertino.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

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
              SizedBox(
                width: kWidth(.9),
                child: Row(
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
                    widthBox(.02),
                    CircleAvatar(
                      radius: kHeight(.035),
                      child: Image.asset(
                        "assets/images/profilepic.png",
                        height: kHeight(.065),
                      ),
                    ),
                    widthBox(.15),
                    CustomText(
                        text: "Chat",
                        textStyle: KTextStyles().normal(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            textColor: KColors.kBlack)),
                    Spacer(),
                    Image.asset(
                      "assets/images/call.png",
                      height: kHeight(.03),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: KColors.bgcolor,
              ),
              heightBox(.04),
              Row(
                children: [
                  CircleAvatar(
                    radius: kHeight(.025),
                    child: Image.asset(
                      "assets/images/profilepic.png",
                      height: kHeight(.045),
                    ),
                  ),
                  widthBox(.04),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            kWidth(.02),
                          ),
                          topRight: Radius.circular(
                            kWidth(.02),
                          ),
                          bottomRight: Radius.circular(
                            kWidth(.02),
                          ),
                        ),
                        color: KColors.bgcolor),
                    padding: EdgeInsets.all(kWidth(.02)),
                    child: CustomText(
                      text: "Hi Ricky! ",
                      textStyle: KTextStyles().normal(fontSize: 17),
                    ),
                  ),
                ],
              ),
              heightBox(.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            kWidth(.02),
                          ),
                          topRight: Radius.circular(
                            kWidth(.02),
                          ),
                          bottomLeft: Radius.circular(
                            kWidth(.02),
                          ),
                        ),
                        color: KColors.kPrimary),
                    padding: EdgeInsets.all(kWidth(.02)),
                    child: CustomText(
                      text: "Hi, Jeseeka ",
                      textStyle: KTextStyles()
                          .normal(fontSize: 17, textColor: KColors.kWhite),
                    ),
                  ),
                  widthBox(.04),
                  Image.asset(
                    "assets/images/chatperson.png",
                    height: kHeight(.045),
                  ),
                ],
              ),
              heightBox(.03),
              Row(
                children: [
                  CircleAvatar(
                    radius: kHeight(.025),
                    child: Image.asset(
                      "assets/images/profilepic.png",
                      height: kHeight(.045),
                    ),
                  ),
                  widthBox(.04),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            kWidth(.02),
                          ),
                          topRight: Radius.circular(
                            kWidth(.02),
                          ),
                          bottomRight: Radius.circular(
                            kWidth(.02),
                          ),
                        ),
                        color: KColors.bgcolor),
                    padding: EdgeInsets.all(kWidth(.02)),
                    child: CustomText(
                      text: "Nice to meet you!",
                      textStyle: KTextStyles().normal(fontSize: 17),
                    ),
                  ),
                ],
              ),
              heightBox(.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: "Typing",
                    textStyle: KTextStyles().normal(fontSize: 17),
                  ),
                  widthBox(.01),
                  Image.asset(
                    "assets/images/loading.png",
                    height: kHeight(.007),
                  ),
                  widthBox(.04),
                  Image.asset(
                    "assets/images/chatperson.png",
                    height: kHeight(.045),
                  ),
                ],
              ),
              heightBox(.41),
              Container(
                height: kHeight(.08),
                width: context.width,
                padding: EdgeInsets.all(kWidth(.04)),
                child: Row(
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      color: KColors.kGrey,
                    ),
                    widthBox(.02),
                    Icon(
                      Icons.mic_none_outlined,
                      color: KColors.kGrey,
                    ),
                    widthBox(.04),
                    SizedBox(
                      height: kHeight(.04),
                      width: kWidth(.5),
                      child: Center(
                          child: Container(
                        decoration: BoxDecoration(
                            color: KColors.bgcolor,
                            borderRadius: BorderRadius.circular(kWidth(1))),
                        padding: EdgeInsets.only(left: kWidth(.04)),
                        child: TextField(
                          style: TextStyle(color: KColors.kGrey),
                          cursorColor: KColors.kGrey,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: kHeight(.015)),
                              suffixIcon: Image.asset(
                                "assets/images/face-wink.png",
                              ),
                              label: CustomText(
                                  text: "Message",
                                  textStyle: KTextStyles().normal()),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                        ),
                      )),
                    ),
                    widthBox(.04),
                    Image.asset("assets/images/like.png"),
                  ],
                ),
              ),
              const Spacer(),
              Divider(
                thickness: 4,
                color: KColors.kBlack,
                indent: kWidth(.25),
                endIndent: kWidth(.25),
              ),
              heightBox(.01),
            ],
          ),
        ),
      ),
    );
  }
}
