import '../widgets/widgets_imports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hintText, img;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool isCPassword;
  final bool enable;
  final bool onlyText;
  final bool onlyTextNumber;
  final bool onlyNumberDot;
  final bool onlyNumber;
  final bool onlyNumberDash;
  final Widget suffixIcon;
  final bool hasSuffix;
  final Color suffixIconColor;
  final double suffixIconSize;
  final bool hasPrefix;
  final VoidCallback? suffixIconFunction;
  final Widget prefixIcon;
  final Color themeColor;
  final VoidCallback? prefixIconFunction;
  final String? Function(String?)? function;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.keyboardType,
    this.isPassword = false,
    this.isCPassword = false,
    this.enable = true,
    required this.suffixIcon,
    required this.prefixIcon,
    this.suffixIconFunction,
    this.prefixIconFunction,
    this.function,
    this.hasSuffix = true,
    this.hasPrefix = true,
    this.themeColor = KColors.kWhite,
    this.suffixIconColor = KColors.kBlack,
    this.suffixIconSize = .06,
    this.onlyText = false,
    this.onlyTextNumber = false,
    this.onlyNumberDot = false,
    this.onlyNumber = false,
    this.onlyNumberDash = false,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kWidth(.02)),
          color: KColors.kGrey.withOpacity(.1),
        ),
        padding: EdgeInsets.symmetric(horizontal: kWidth(.02)),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enabled: enable,
          controller: controller,
          textInputAction: TextInputAction.next,
          cursorColor: themeColor,
          cursorWidth: 2.0,
          cursorHeight: kHeight(.024),
          obscureText: isPassword
              ? isCPassword
                  ? obscureTextCP.value
                  : obscureText.value
              : defaultObscureText.value,
          keyboardType: keyboardType,
          inputFormatters: [
            keyboardType == TextInputType.phone
                ? FilteringTextInputFormatter.allow(
                    RegExp("[0-9]"),
                  )
                : onlyText
                    ? FilteringTextInputFormatter.allow(
                        RegExp("[a-zA-Z ]"),
                      )
                    : onlyTextNumber
                        ? FilteringTextInputFormatter.allow(
                            RegExp("[a-zA-Z 0-9]"),
                          )
                        : onlyNumberDot
                            ? FilteringTextInputFormatter.allow(
                                RegExp("[0-9 \\.]"),
                              )
                            : onlyNumberDash
                                ? FilteringTextInputFormatter.allow(
                                    RegExp("[0-9 \\-]"),
                                  )
                                : onlyNumber
                                    ? FilteringTextInputFormatter.allow(
                                        RegExp("[0-9]"),
                                      )
                                    : FilteringTextInputFormatter.allow(
                                        RegExp("[a-zA-Z , @/:? 0-9 \\- _ .]"),
                                      ),
            keyboardType == TextInputType.phone
                ? FilteringTextInputFormatter.deny(
                    RegExp('[\\.|\\,\\-\\_]'),
                  )
                : FilteringTextInputFormatter.deny(
                    RegExp('[\\#]'),
                  ),
          ],
          style: TextStyle(
            color: themeColor,
            fontSize: kWidth(.04),
          ),
          validator: function,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: kHeight(.02)),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              suffixIcon: hasSuffix
                  ? InkWell(
                      onTap: isPassword
                          ? () {
                              obscureText.value = !obscureText.value;
                            }
                          : suffixIconFunction,
                      child: isPassword
                          ? obscureText.value
                              ? Icon(
                                  CupertinoIcons.eye,
                                  color: suffixIconColor,
                                  size: kWidth(suffixIconSize),
                                )
                              : Icon(
                                  CupertinoIcons.eye_slash,
                                  color: suffixIconColor,
                                  size: kWidth(suffixIconSize),
                                )
                          : suffixIcon,
                    )
                  : null,
              isDense: true,
              prefixIcon: hasPrefix ? Image.asset(img) : Icon(null),
              label: Text(label),
              labelStyle: TextStyle(color: themeColor),
              hintText: hintText,
              hintStyle: TextStyle(color: themeColor.withOpacity(.4)),
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none),
        ),
      );
    });
  }
}
