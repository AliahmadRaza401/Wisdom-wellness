import 'package:flutter/cupertino.dart';
import 'package:wisdom_and_wellness/widgets/app_widgets.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

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
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    backgroundColor: KColors.bgcolor,
                    radius: kHeight(.02),
                    child: Icon(
                      Icons.arrow_back,
                      color: KColors.kBlack,
                    ),
                  )),
              heightBox(.04),
              SizedBox(
                width: kWidth(.4),
                child: CustomText(
                    alignText: TextAlign.left,
                    maxLines: 2,
                    text: "Debit/ Credit Card",
                    textStyle: KTextStyles()
                        .normal(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              heightBox(.04),
              Container(
                height: kHeight(.07),
                width: kWidth(.9),
                decoration: BoxDecoration(
                    color: KColors.bgcolor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(kWidth(.02))),
                padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: KColors.kPrimary, width: 2))),
                        alignment: Alignment.center,
                        child: CustomText(
                            text: "Debit Card",
                            textStyle: KTextStyles().normal(fontSize: 16)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: CustomText(
                            text: "Credit Card",
                            textStyle: KTextStyles().normal(fontSize: 16)),
                      ),
                    )
                  ],
                ),
              ),
              heightBox(.02),
              CustomText(
                  text: "Card Number",
                  textStyle: KTextStyles()
                      .normal(fontSize: 16, fontWeight: FontWeight.bold)),
              heightBox(.01),
              Container(
                  height: kHeight(.07),
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                      color: KColors.bgcolor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(kWidth(.02))),
                  padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: KColors.kBlack,
                    style: TextStyle(color: KColors.kBlack),
                    decoration: InputDecoration(
                        labelText: "55534       2834       5370",
                        labelStyle: TextStyle(color: KColors.kBlack),
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Image.asset(
                          "assets/images/master_card.png",
                          height: kHeight(.02),
                        )),
                  )),
              heightBox(.02),
              SizedBox(
                width: kWidth(.6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "Expiry Date",
                        textStyle: KTextStyles()
                            .normal(fontSize: 16, fontWeight: FontWeight.bold)),
                    CustomText(
                        text: "CVV",
                        textStyle: KTextStyles()
                            .normal(fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              heightBox(.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: kHeight(.07),
                    width: kWidth(.4),
                    decoration: BoxDecoration(
                        color: KColors.bgcolor.withOpacity(.2),
                        borderRadius: BorderRadius.circular(kWidth(.02))),
                    padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: "Jan/2023",
                            textStyle: KTextStyles().normal(
                              fontSize: 16,
                            )),
                        Icon(CupertinoIcons.chevron_down)
                      ],
                    ),
                  ),
                  Container(
                      height: kHeight(.07),
                      width: kWidth(.42),
                      decoration: BoxDecoration(
                          color: KColors.bgcolor.withOpacity(.2),
                          borderRadius: BorderRadius.circular(kWidth(.02))),
                      padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: true,
                        cursorColor: KColors.kBlack,
                        style: TextStyle(color: KColors.kBlack),
                        decoration: InputDecoration(
                          labelText: "****",
                          labelStyle: TextStyle(color: KColors.kBlack),
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      )),
                ],
              ),
              heightBox(.02),
              CustomText(
                  text: "Name",
                  textStyle: KTextStyles()
                      .normal(fontSize: 16, fontWeight: FontWeight.bold)),
              heightBox(.01),
              Container(
                  height: kHeight(.07),
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                      color: KColors.bgcolor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(kWidth(.02))),
                  padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: KColors.kBlack,
                    style: TextStyle(color: KColors.kBlack),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: "Abssion Nisdom",
                      labelStyle: TextStyle(color: KColors.kBlack),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  )),
              heightBox(.02),
              KCheckList(value: true, title: "Check for future Checkouts"),
              heightBox(.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: kHeight(.07),
                      width: kWidth(.4),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: KColors.kGrey.withOpacity(.5),
                                blurRadius: 5,
                                offset: Offset(-1, 0))
                          ],
                          color: KColors.kWhite,
                          borderRadius: BorderRadius.circular(kWidth(.02))),
                      padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                      alignment: Alignment.center,
                      child: CustomText(
                          text: "Cancel Payment",
                          textStyle: KTextStyles().normal(
                              textColor: KColors.kPrimary,
                              fontSize: 17,
                              fontWeight: FontWeight.bold))),
                  PrimaryButton(
                    width: .4,
                    height: .07,
                    text: "Pay Now",
                    function: () {
                      Get.dialog(Center(
                        child: Container(
                          height: kHeight(.45),
                          width: kWidth(.8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              kWidth(.02),
                            ),
                            color: KColors.kWhite,
                          ),
                          padding: EdgeInsets.all(kWidth(.04)),
                          child: Material(
                            color: KColors.noColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                heightBox(.02),
                                Image.asset(
                                  "assets/images/dialogpic.PNG",
                                  height: kHeight(.2),
                                ),
                                heightBox(.02),
                                CustomText(
                                    text: "Congratulations",
                                    textStyle: KTextStyles().normal(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                heightBox(.02),
                                SizedBox(
                                  width: kWidth(.6),
                                  child: CustomText(
                                      maxLines: 2,
                                      text:
                                          "Your Payment has been successfully done",
                                      textStyle: KTextStyles().normal(
                                        fontSize: 14,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ));
                    },
                  )
                ],
              ),
              Spacer(),
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
