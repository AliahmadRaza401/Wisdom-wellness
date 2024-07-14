import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Acceptance extends StatelessWidget {
  const Acceptance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kPrimary,
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Checkicon.png",
              height: kHeight(.1),
            ),
            heightBox(.01),
            CustomText(
                text: "Challenge accepted",
                textStyle: KTextStyles().normal(
                    fontSize: 24,
                    textColor: KColors.kWhite,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
