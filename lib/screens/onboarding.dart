import 'package:get/get.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController();
  RxInt currentPageIndex = RxInt(0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            currentPageIndex.value = index;
          },
          children: [
            buildPage(
              index: 0,
              image: "assets/images/onboarding1.jpg",
              text: "Embrace holistic wellness through exclusive content",
              lastPage: false,
              context: context,
              nextPage: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
            ),
            buildPage(
              index: 1,
              image: "assets/images/onboarding2.jpg",
              text: "Discover a community of growth, love and accountability",
              lastPage: false,
              context: context,
              nextPage: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
            ),
            buildPage(
              index: 2,
              image: "assets/images/onboarding3.jpg",
              text:
                  "Enjoy challenges courses and access our calendar to stay updated ",
              lastPage: true,
              context: context,
              nextPage: () {
                // Navigate to the next screen or perform any action on last page
                // Example using GetX navigation
                Get.toNamed("/login");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage({
    required int index,
    required BuildContext context,
    required String image,
    required String text,
    required bool lastPage,
    required VoidCallback nextPage,
  }) {
    return Stack(
      children: [
        Container(
          height: context.height,
          width: context.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                KColors.kGradient3,
                KColors.kGradient2,
                KColors.kGradient1,
              ],
            ),
          ),
        ),
        Opacity(
          opacity: 0.1,
          child: Image.asset(
            image,
            height: context.height,
            width: context.width,
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: SizedBox(
            width: kWidth(.8),
            child: Column(
              children: [
                heightBox(.25),
                Image.asset(
                  "assets/images/logo.png",
                  height: kHeight(.06),
                ),
                heightBox(.3),
                CustomText(
                  alignText: TextAlign.center,
                  maxLines: 2,
                  text: text,
                  textStyle: KTextStyles().normal(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    textColor: KColors.kWhite,
                  ),
                ),
                heightBox(.08),
                buildPageIndicator(context, index),
                Spacer(), // Spacer between dots and buttons
                if (lastPage)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrimaryButton(
                        width: .35,
                        text: "Sign up",
                        function: () {
                          Get.toNamed("/signup");
                        },
                      ),
                      PrimaryButton(
                        color: KColors.kGrey,
                        width: .35,
                        text: "Login",
                        function: () {
                          Get.toNamed("/login");
                        },
                      ),
                    ],
                  )
                else
                  PrimaryButton(
                    width: .9,
                    text: "Continue",
                    function: nextPage,
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
      ],
    );
  }

  Widget buildPageIndicator(BuildContext context, int currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildDot(active: currentIndex == 0),
        buildDot(active: currentIndex == 1),
        buildDot(active: currentIndex == 2),
      ],
    );
  }

  Widget buildDot({required bool active}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.white : Colors.grey,
      ),
    );
  }
}
