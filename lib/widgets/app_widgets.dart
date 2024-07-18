import 'widgets_imports.dart';

class KRadio<T> extends StatelessWidget {
  const KRadio({
    super.key,
    required this.value,
    required this.title,
    this.groupValue,
    this.maxLines = 1,
    this.fontSize = 14,
    this.onChanged,
    this.color = KColors.kPrimary,
  });
  final Color color;
  final String title;
  final T value;
  final T? groupValue;
  final int maxLines;
  final double fontSize;
  final T? Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      horizontalTitleGap: kWidth(.02),
      child: RadioListTile<T>(
        value: value,
        dense: false,
        enableFeedback: true,
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(
          horizontal: -4,
          vertical: -4,
        ),
        title: CustomText(
          text: title,
          textStyle: KTextStyles()
              .normal(textColor: color, fontWeight: FontWeight.bold),
          alignText: TextAlign.start,
        ),
        activeColor: KColors.kPrimary,
        groupValue: groupValue,
        onChanged: onChanged,
        fillColor: const WidgetStatePropertyAll(KColors.kBlack),
        overlayColor: const WidgetStatePropertyAll(KColors.kBlack),
      ),
    );
  }
}

class KCheckList<T> extends StatelessWidget {
  const KCheckList({
    super.key,
    required this.value,
    required this.title,
    this.onChanged,
  });

  final bool value;
  final String title;
  final bool Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      fillColor: const WidgetStatePropertyAll(KColors.kPrimary),
      activeColor: KColors.kWhite,
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
      value: value,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      title: CustomText(
        text: title,
        textStyle: KTextStyles().normal(fontWeight: FontWeight.bold),
        alignText: TextAlign.start,
      ),
      onChanged: onChanged,
    );
  }
}

class KLoadingOverlay extends StatelessWidget {
  const KLoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
  });

  final RxBool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return LoadingOverlay(
        isLoading: isLoading.value,
        color: KColors.kGrey,
        progressIndicator: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: KColors.kWhite.withOpacity(.4),
            alignment: Alignment.center,
            child: const CustomLoader(),
          ),
        ),
        child: child,
      );
    });
  }
}
