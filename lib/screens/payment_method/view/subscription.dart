import 'package:wisdom_and_wellness/widgets/app_widgets.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

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
              KAppBarText(
                title: "Subscription Plan",
                img: "assets/images/5.png",
              ),
              heightBox(.04),
              Image.asset(
                "assets/images/logo.png",
                height: kHeight(.04),
              ),
              heightBox(.08),
              Row(
                children: [
                  Image.asset(
                    "assets/images/diamond.png",
                    height: kHeight(.03),
                  ),
                  widthBox(.02),
                  CustomText(
                      text: "Monthly Plan",
                      textStyle: KTextStyles()
                          .normal(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              heightBox(.01),
              Row(
                children: [
                  Image.asset(
                    "assets/images/check.png",
                    height: kHeight(.03),
                  ),
                  widthBox(.02),
                  CustomText(
                      text: "Exclusive contents",
                      textStyle: KTextStyles().normal(
                        fontSize: 17,
                      )),
                ],
              ),
              heightBox(.01),
              Row(
                children: [
                  Image.asset(
                    "assets/images/check.png",
                    height: kHeight(.03),
                  ),
                  widthBox(.02),
                  CustomText(
                      text: "Members-only Community Access",
                      textStyle: KTextStyles().normal(
                        fontSize: 17,
                      )),
                ],
              ),
              heightBox(.01),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/check.png",
                    height: kHeight(.03),
                  ),
                  widthBox(.02),
                  SizedBox(
                    width: kWidth(.8),
                    child: CustomText(
                        alignText: TextAlign.left,
                        maxLines: 2,
                        text: "Monthly challenges, Online classes, Book Review",
                        textStyle: KTextStyles().normal(
                          fontSize: 17,
                        )),
                  ),
                ],
              ),
              heightBox(.04),
              Row(
                children: [
                  Image.asset(
                    "assets/images/pay.png",
                    height: kHeight(.03),
                  ),
                  widthBox(.02),
                  CustomText(
                      text: "Payment Methods",
                      textStyle: KTextStyles()
                          .normal(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              heightBox(.02),
              Row(
                children: [
                  Image.asset(
                    "assets/images/arcticons_google-pay.png",
                    height: kHeight(.03),
                  ),
                  widthBox(.02),
                  CustomText(
                      text: "Pay with",
                      textStyle: KTextStyles()
                          .normal(fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
              heightBox(.02),
              SizedBox(
                width: kWidth(.3),
                child: const KRadio(
                  value: false,
                  title: "Card Pay",
                  color: KColors.kBlack,
                ),
              ),
              SizedBox(
                width: kWidth(.3),
                child: const KRadio(
                  value: false,
                  title: "Apple Pay",
                  color: KColors.kBlack,
                ),
              ),
              heightBox(.18),
              PrimaryButton(
                width: .9,
                text: "Add New Payment",
                function: () {
                  Get.toNamed("/paymentoption");
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
        ),
      ),
    );
  }
}
