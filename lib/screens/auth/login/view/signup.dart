import 'package:wisdom_and_wellness/widgets/app_widgets.dart';

import '../../../../widgets/widgets_imports.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightBox(.08),
              KAppBar(title: "WISDOM"),
              heightBox(.08),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                    text: "Signup",
                    textStyle: KTextStyles().normal(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              heightBox(.02),
              CustomTextField(
                hasSuffix: false,
                themeColor: Color(0xff949494),
                controller: nameController,
                label: "Enter Full Name",
                hintText: "",
                keyboardType: TextInputType.text,
                suffixIcon: Icon(null),
                prefixIcon: Icon(Icons.message),
                img: 'assets/images/user.png',
              ),
              heightBox(.02),
              CustomTextField(
                hasSuffix: false,
                themeColor: Color(0xff949494),
                controller: emailController,
                label: "Enter Your Email",
                hintText: "",
                keyboardType: TextInputType.text,
                suffixIcon: Icon(null),
                prefixIcon: Icon(Icons.message),
                img: 'assets/images/mail.png',
              ),
              heightBox(.02),
              CustomTextField(
                suffixIconColor: KColors.kGrey,
                isCPassword: true,
                isPassword: true,
                themeColor: Color(0xff949494),
                controller: passwordController,
                label: "Enter Your Password",
                hintText: "",
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Icon(null),
                prefixIcon: Icon(Icons.message),
                img: 'assets/images/lock.png',
              ),
              heightBox(.02),
              CustomTextField(
                suffixIconColor: KColors.kGrey,
                isCPassword: true,
                isPassword: true,
                themeColor: Color(0xff949494),
                controller: confirmPasswordController,
                label: "Confirm Password",
                hintText: "",
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Icon(null),
                prefixIcon: Icon(Icons.message),
                img: 'assets/images/lock.png',
              ),
              heightBox(.02),
              PrimaryButton(
                width: .9,
                text: "Signup",
                function: () {},
              ),
              heightBox(
                .02,
              ),
              SizedBox(
                  width: kWidth(.7),
                  child: KRadio(
                      value: false,
                      title: "Terms of Service and Privacy Policy")),
              heightBox(
                .02,
              ),
              CustomRichText(
                normalColor: KColors.kBlack,
                focusedColor: KColors.kPrimary,
                normalText: "Already have an account? ",
                focusedText: "login",
                nextpage: () {
                  Get.toNamed("/login");
                },
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
