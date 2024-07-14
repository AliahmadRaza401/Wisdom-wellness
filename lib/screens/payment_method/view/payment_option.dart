import 'package:flutter/cupertino.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({super.key});

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
              CustomText(
                  text: "Choose Payment Option",
                  textStyle: KTextStyles()
                      .normal(fontSize: 24, fontWeight: FontWeight.bold)),
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
                    CustomText(
                        text: "Debit /Credit card",
                        textStyle: KTextStyles()
                            .normal(fontSize: 17, fontWeight: FontWeight.bold)),
                    Icon(CupertinoIcons.chevron_down)
                  ],
                ),
              ),
              heightBox(.02),
              Container(
                height: kHeight(.07),
                width: kWidth(.9),
                decoration: BoxDecoration(
                    color: KColors.bgcolor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(kWidth(.02))),
                padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                child: Row(
                  children: [
                    CustomText(
                        text: "Internet Banking",
                        textStyle: KTextStyles()
                            .normal(fontSize: 17, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              heightBox(.02),
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
                    Image.asset(
                      "assets/images/Google_pay.png",
                      height: kHeight(.04),
                    ),
                    Image.asset(
                      "assets/images/Upi.png",
                      height: kHeight(.04),
                    ),
                  ],
                ),
              ),
              heightBox(.02),
              Container(
                height: kHeight(.07),
                width: kWidth(.9),
                decoration: BoxDecoration(
                    color: KColors.bgcolor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(kWidth(.02))),
                padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Phone_pe.png",
                      height: kHeight(.04),
                    ),
                    widthBox(.02),
                    CustomText(
                        text: "Phonepe",
                        textStyle: KTextStyles()
                            .normal(fontSize: 17, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Image.asset(
                      "assets/images/Rupay.png",
                      height: kHeight(.03),
                    ),
                  ],
                ),
              ),
              heightBox(.02),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/carddetails");
                },
                child: Container(
                    height: kHeight(.07),
                    width: kWidth(.9),
                    decoration: BoxDecoration(
                        color: KColors.bgcolor.withOpacity(.2),
                        borderRadius: BorderRadius.circular(kWidth(.02))),
                    padding: EdgeInsets.symmetric(horizontal: kWidth(.04)),
                    alignment: Alignment.center,
                    child: CustomText(
                        text: "+ Add another option ",
                        textStyle: KTextStyles().normal(
                            fontSize: 16, fontWeight: FontWeight.bold))),
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
