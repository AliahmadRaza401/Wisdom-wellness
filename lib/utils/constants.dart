import '../widgets/widgets_imports.dart';

/// App Constants

String appVersion = "0.0.0";

/// GetX Constants

var obscureText = true.obs;
var obscureTextCP = true.obs;
var defaultObscureText = false.obs;

/// API Constants

const Map<String, String> simpleHeaders = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

const Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

class Ktextfield extends StatelessWidget {
  final TextEditingController controller;
  final String lable, img;
  final Color color;
  final double width;
  const Ktextfield({
    super.key,
    required this.lable,
    required this.img,
    required this.controller,
    this.color = KColors.kWhite,
    this.width = .9,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(.06),
      decoration: BoxDecoration(
          border: Border.all(color: KColors.kGrey.withOpacity(.3)),
          color: color,
          borderRadius: BorderRadius.circular(kWidth(.02))),
      alignment: Alignment.center,
      width: kWidth(width),
      padding: EdgeInsets.symmetric(horizontal: kWidth(.02)),
      child: Center(
        child: TextField(
          controller: controller,
          cursorColor: KColors.kGrey,
          cursorErrorColor: KColors.kGrey,
          style: const TextStyle(color: KColors.kGrey),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: kHeight(.02)),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Image.asset(
                img,
              ),
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              labelStyle: const TextStyle(color: KColors.kGrey),
              labelText: lable),
        ),
      ),
    );
  }
}

class CTextField extends StatelessWidget {
  final TextEditingController controller;
  final String lable, img;
  const CTextField({
    super.key,
    required this.lable,
    required this.img,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(.06),
      decoration: BoxDecoration(
          border: Border.all(color: KColors.kGrey.withOpacity(.3)),
          color: KColors.kWhite,
          borderRadius: BorderRadius.circular(kWidth(.02))),
      alignment: Alignment.center,
      width: kWidth(.9),
      child: Center(
        child: TextField(
          controller: controller,
          cursorColor: KColors.kGrey,
          cursorErrorColor: KColors.kGrey,
          style: const TextStyle(color: KColors.kGrey),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: kHeight(.02)),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Image.asset(
                img,
                height: kHeight(.04),
                width: kWidth(.3),
              ),
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              labelStyle: const TextStyle(color: KColors.kGrey),
              labelText: lable),
        ),
      ),
    );
  }
}

class KAppBar extends StatelessWidget {
  final String title;
  const KAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(.9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: CircleAvatar(
                backgroundColor: Color(0xffE0E0E0),
                radius: kHeight(.02),
                child: const Icon(
                  Icons.arrow_back,
                  color: KColors.kBlack,
                ),
              )),
          Image.asset(
            "assets/images/logo.png",
            height: kHeight(.04),
          ),
          CircleAvatar(
            backgroundColor: Color(0xffE0E0E0),
            radius: kHeight(.02),
            child: Image.asset(
              "assets/images/x-close.png",
              height: kHeight(.03),
              color: KColors.kBlack,
            ),
          )
        ],
      ),
    );
  }
}

class KAppBarText extends StatelessWidget {
  final String title, img;
  final Color color, bgcolor;
  final RxnBool istrue = RxnBool(true);
  KAppBarText({
    super.key,
    required this.title,
    this.img = "assets/images/x-close.png",
    this.color = KColors.kBlack,
    this.bgcolor = KColors.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(.9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: CircleAvatar(
                backgroundColor: bgcolor,
                radius: kHeight(.025),
                child: Icon(
                  Icons.arrow_back,
                  color: color,
                ),
              )),
          CustomText(
              text: title,
              textStyle: KTextStyles().normal(
                  fontSize: 20, fontWeight: FontWeight.w600, textColor: color)),
          CircleAvatar(
            backgroundColor: bgcolor,
            radius: kHeight(.025),
            child: Image.asset(
              img,
              height: kHeight(.03),
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
