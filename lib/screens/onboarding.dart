import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  OnboardingState createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
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
              text: "Discover a community of growth, love and accountability",
              lastPage: false,
              context: context,
              nextPage: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
              heading: 'COMMUNITY',
            ),
            buildPage(
              index: 1,
              image: "assets/images/onboarding2.jpg",
              text: "Embrace holistic wellness through exclusive content",
              lastPage: false,
              context: context,
              nextPage: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
              heading: 'EXCLUSIVE CONTENT',
            ),
            buildPage(
              index: 2,
              image: "assets/images/onboarding3.jpg",
              text:
                  "Enjoy challenges courses and access our calendar to stay updated",
              lastPage: true,
              context: context,
              nextPage: () {
                Get.toNamed("/login");
              },
              heading: 'CHALLENGES & COURSES',
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
    required String heading,
    required bool lastPage,
    required VoidCallback nextPage,
  }) {
    return Stack(
      children: [
        Container(
          height: context.height,
          width: context.width,
          decoration: const BoxDecoration(
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
                  color: KColors.kWhite,
                ),
                heightBox(.3),
                CustomText(
                  alignText: TextAlign.center,
                  maxLines: 1,
                  text: heading,
                  textStyle: KTextStyles().normal(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    textColor: KColors.kWhite,
                  ),
                ),
                heightBox(.01),
                CustomText(
                  alignText: TextAlign.center,
                  maxLines: 2,
                  text: text,
                  textStyle: KTextStyles().normal(
                    fontSize: 18,
                    textColor: KColors.kWhite,
                  ),
                ),
                heightBox(.08),
                buildPageIndicator(context, index),
                const Spacer(), // Spacer between dots and buttons
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
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.white : Colors.grey,
      ),
    );
  }
}
