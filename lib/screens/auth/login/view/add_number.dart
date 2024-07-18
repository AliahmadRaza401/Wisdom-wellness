import 'package:wisdom_and_wellness/widgets/app_widgets.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class AddNumber extends StatelessWidget {
  AddNumber({super.key});
  final TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: context.height,
        width: kWidth(.9),
        child: Column(
          children: [
            heightBox(.1),
            Image.asset(
              "assets/images/phonenumber.png",
              height: kHeight(.3),
            ),
            heightBox(.04),
            CustomText(
                text: "Add Your Phone Number",
                textStyle: KTextStyles()
                    .normal(fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(
              width: kWidth(.7),
              child: CustomText(
                  maxLines: 2,
                  text:
                      "Enter your phone number in order to send you your OTP security code",
                  textStyle: KTextStyles().normal(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      textColor: KColors.kGrey)),
            ),
            heightBox(.02),
            Container(
              width: kWidth(.8),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: KColors.kGrey.withOpacity(.5), blurRadius: 5)
                ],
                color: KColors.kWhite,
                borderRadius: BorderRadius.circular(kWidth(.03)),
              ),
              padding: EdgeInsets.all(kWidth(.06)),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Phone number",
                      textStyle: KTextStyles()
                          .normal(fontSize: 10, fontWeight: FontWeight.bold)),
                  heightBox(.01),
                  CTextField(
                      lable: "0-000-000-0000",
                      img: "assets/images/africa.png",
                      controller: pinController),
                  heightBox(.01),
                  CustomText(
                      text: "YOUR PHONE NUMBER MUST CONTAIN",
                      textStyle: KTextStyles()
                          .normal(fontSize: 12, fontWeight: FontWeight.bold)),
                  heightBox(.005),
                  Row(
                    children: [
                      Image.asset("assets/images/bullet.png"),
                      widthBox(.02),
                      CustomText(
                          text: "An area code",
                          textStyle: KTextStyles().normal(
                            fontSize: 12,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/bullet.png"),
                      widthBox(.02),
                      CustomText(
                          text: "Exactly 11 numbers",
                          textStyle: KTextStyles().normal(
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            heightBox(.02),
            SizedBox(
                width: kWidth(.7),
                child: const KRadio(
                    value: false,
                    title: "Terms of Service and Privacy Policy")),
            heightBox(.02),
            PrimaryButton(
              width: .9,
              text: "Next Step",
              function: () {
                Get.toNamed("/verification");
              },
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
      )),
    );
  }
}
