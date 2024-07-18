import 'package:wisdom_and_wellness/screens/video.dart';
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
                    child: const Icon(
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
                        decoration: const BoxDecoration(
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
                    style: const TextStyle(color: KColors.kBlack),
                    decoration: InputDecoration(
                        labelText: "55534       2834       5370",
                        labelStyle: const TextStyle(color: KColors.kBlack),
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
                        const Icon(CupertinoIcons.chevron_down)
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
                      child: const TextField(
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
                  child: const TextField(
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
              const KCheckList(
                  value: true, title: "Check for future Checkouts"),
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
                                offset: const Offset(-1, 0))
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
                      Get.dialog(CongratulationsDialog());
                    },
                  )
                ],
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

class CongratulationsDialog extends StatelessWidget {
  const CongratulationsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Get.to(Video());
    });

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(16.0),
        child: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              Image.asset(
                "assets/images/dialogpic.PNG",
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              SizedBox(height: 16.0),
              Text(
                "Congratulations",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: KColors.kBlack),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Your Payment has been successfully done",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: KColors.kGrey,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
