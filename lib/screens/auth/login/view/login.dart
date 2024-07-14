import '../../../../widgets/widgets_imports.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              heightBox(.08),
              KAppBar(title: "WISDOM"),
              heightBox(.08),
              CustomText(
                  text: "Let’s Login!",
                  textStyle: KTextStyles().normal(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              heightBox(.01),
              CustomText(
                  text: "Login to Your Account to Continue your Courses",
                  textStyle: KTextStyles().normal(
                    textColor: KColors.kGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
              heightBox(.02),
              Ktextfield(
                lable: "Email",
                img: "assets/images/message.png",
                controller: emailController,
              ),
              heightBox(.02),
              Ktextfield(
                  lable: "Password",
                  img: "assets/images/password.png",
                  controller: passwordController),
              heightBox(.02),
              Row(
                children: [
                  Container(
                    height: kHeight(.025),
                    width: kWidth(.05),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: KColors.kBlack)),
                    child: Checkbox(
                      checkColor: KColors.kBlack,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      fillColor: const WidgetStatePropertyAll(KColors.noColor),
                      side: const BorderSide(color: KColors.kBlack),
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  widthBox(.02),
                  CustomText(
                      text: "Remember me",
                      textStyle: KTextStyles().normal(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      )),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/addnumber");
                    },
                    child: CustomText(
                        text: "Forgot Password?",
                        textStyle: KTextStyles().normal(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            textColor: KColors.kPrimary)),
                  ),
                ],
              ),
              heightBox(.02),
              PrimaryButton(
                width: .9,
                text: "Login",
                function: () {
                  Get.toNamed("/bottomnav");
                },
              ),
              heightBox(.02),
              Align(
                alignment: Alignment.center,
                child: CustomText(
                    text: "Or Continue With",
                    textStyle: KTextStyles().normal(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              heightBox(.02),
              Container(
                height: kHeight(.06),
                width: kWidth(.9),
                decoration: BoxDecoration(
                  border: Border.all(color: KColors.kGrey.withOpacity(.3)),
                  borderRadius: BorderRadius.circular(
                    kWidth(.02),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google.png",
                      height: kHeight(.03),
                    ),
                    widthBox(.04),
                    CustomText(
                        text: "Sign in with Google",
                        textStyle: KTextStyles()
                            .normal(fontSize: 16, fontWeight: FontWeight.w600))
                  ],
                ),
              ),
              heightBox(.02),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/leaderboard");
                },
                child: Container(
                  height: kHeight(.06),
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                    color: Color(0xff1877F2),
                    borderRadius: BorderRadius.circular(
                      kWidth(.02),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/facebook.png",
                        height: kHeight(.03),
                      ),
                      widthBox(.04),
                      CustomText(
                          text: "Sign in with facebook",
                          textStyle: KTextStyles().normal(
                              textColor: KColors.kWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
              ),
              heightBox(.02),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/subscription");
                },
                child: Container(
                  height: kHeight(.06),
                  width: kWidth(.9),
                  decoration: BoxDecoration(
                    color: KColors.kBlack,
                    borderRadius: BorderRadius.circular(
                      kWidth(.02),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/apple.png",
                        height: kHeight(.03),
                      ),
                      widthBox(.04),
                      CustomText(
                          text: "Sign in with apple",
                          textStyle: KTextStyles().normal(
                              textColor: KColors.kWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
              ),
              heightBox(.02),
              Align(
                alignment: Alignment.center,
                child: CustomRichText(
                  normalColor: KColors.kBlack,
                  focusedColor: KColors.kPrimary,
                  normalText: "Don't have an account? ",
                  focusedText: "Sign Up",
                  nextpage: () {
                    Get.toNamed("/signup");
                  },
                ),
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
