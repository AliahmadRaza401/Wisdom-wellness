import 'package:pinput/pinput.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Verification extends StatelessWidget {
  Verification({super.key});
  final TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: Center(
            child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            children: [
              heightBox(.15),
              Image.asset(
                "assets/images/verify.png",
                height: kHeight(.3),
              ),
              heightBox(.1),
              CustomText(
                  text: "Enter Your Verification Code",
                  textStyle: KTextStyles()
                      .normal(fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(
                width: kWidth(.65),
                child: CustomText(
                    maxLines: 2,
                    text:
                        "Enter your 4 digit number that we send to (+27) 4-345-678-8765",
                    textStyle: KTextStyles().normal(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: KColors.kGrey)),
              ),
              heightBox(.02),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kWidth(.05),
                ),
                child: Container(
                  height: kHeight(.1),
                  width: kWidth(.9),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: KColors.kGrey.withOpacity(.5), blurRadius: 5)
                    ],
                    color: KColors.kWhite,
                    borderRadius: BorderRadius.circular(kWidth(.03)),
                  ),
                  padding: EdgeInsets.all(kWidth(.02)),
                  alignment: Alignment.center,
                  child: Center(
                    child: Pinput(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      length: 4,
                      obscureText: false,
                      controller: pinController,
                      defaultPinTheme: PinTheme(
                        width: kWidth(.15),
                        height: kWidth(.1),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: KColors.kBlack,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: KColors.kPrimary, width: 2)),
                          color: KColors.kWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              heightBox(.02),
              PrimaryButton(
                width: .9,
                text: "Next Step",
                function: () {
                  Get.toNamed("/subscription");
                },
              ),
              heightBox(
                .02,
              ),
              CustomRichText(
                focusedFontSize: 14,
                normalColor: KColors.kBlack,
                focusedColor: KColors.kPrimary,
                normalText: "Didn't receive anything? ",
                focusedText: "Resend Code",
                nextpage: () {
                  Get.toNamed("/");
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
      ),
    );
  }
}
