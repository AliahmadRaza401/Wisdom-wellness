import 'package:flutter/cupertino.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/Slider.png",
                    height: kHeight(.03),
                  ),
                  Image.asset(
                    "assets/images/Doorbell.png",
                    height: kHeight(.03),
                  ),
                ],
              ),
              heightBox(.06),
              ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return NotificationTile();
                  },
                  separatorBuilder: (context, index) => heightBox(.02),
                  itemCount: 4),
              Spacer(),
              PrimaryButton(
                tcolor: KColors.kBlack,
                borderRadius: 1,
                width: .3,
                text: "Clear All",
                function: () {},
              ),
              heightBox(.02),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.9),
      decoration: BoxDecoration(
        color: KColors.kPrimary.withOpacity(.6),
        borderRadius: BorderRadius.circular(kWidth(.04)),
      ),
      padding: EdgeInsets.all(kWidth(.04)),
      alignment: Alignment.center,
      child: CustomText(
        alignText: TextAlign.left,
        maxLines: 2,
        text: "Congratulations! You have completed 20 workouts this week.",
        textStyle: KTextStyles().normal(
          fontSize: 19,
        ),
      ),
    );
  }
}
