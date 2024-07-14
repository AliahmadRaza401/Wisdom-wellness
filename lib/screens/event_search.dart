import 'package:flutter/cupertino.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class EventSearch extends StatelessWidget {
  const EventSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          children: [
            heightBox(.06),
            KAppBarText(
              title: "Search",
              img: "assets/images/6.png",
            ),
            heightBox(.02),
            SizedBox(
              width: kWidth(.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ktextfield(
                      width: .75,
                      color: KColors.bgcolor.withOpacity(.5),
                      lable: "Search Contents, Events and Forum",
                      img: "assets/images/search.png",
                      controller: TextEditingController()),
                  CircleAvatar(
                      backgroundColor: KColors.bgcolor,
                      radius: kHeight(.03),
                      child: Image.asset(
                        "assets/images/funnel.png",
                        height: kHeight(.02),
                      ))
                ],
              ),
            ),
            heightBox(.02),
            SizedBox(
              width: kWidth(.9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Search Results",
                      textStyle: KTextStyles()
                          .normal(fontSize: 17, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            heightBox(.02),
            ForumsBox(),
            heightBox(.02),
            Image.asset("assets/images/searchpage.png")
          ],
        ),
      ),
    );
  }
}

class ForumsBox extends StatelessWidget {
  const ForumsBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(.9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kWidth(.04)),
        color: KColors.bgcolor.withOpacity(.5),
      ),
      padding: EdgeInsets.all(kWidth(.04)),
      child: Column(children: [
        SizedBox(
          width: kWidth(.9),
          child: Row(
            children: [
              Image.asset(
                "assets/images/jaseeca.png",
                height: kHeight(.055),
              ),
              widthBox(.04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Jaseeca",
                      textStyle: KTextStyles().normal(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          textColor: KColors.kBlack)),
                  SizedBox(
                    width: kWidth(.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryButton(
                          height: .025,
                          width: .15,
                          text: "Topic",
                          function: () {},
                        ),
                        CustomText(
                            text: "23 May",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                textColor: KColors.kBlack)),
                        CustomText(
                            text: "1h ago",
                            textStyle: KTextStyles().normal(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                textColor: KColors.kBlack)),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        heightBox(.02),
        CustomText(
            alignText: TextAlign.left,
            maxLines: 2,
            text:
                "How many people around the world are most helpful for the human being?",
            textStyle: KTextStyles().normal(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                textColor: KColors.kBlack)),
        heightBox(.02),
        Row(
          children: [
            Icon(
              Icons.favorite,
              color: KColors.kRed,
            ),
            widthBox(.01),
            CustomText(
                text: "34", textStyle: KTextStyles().normal(fontSize: 12)),
            widthBox(.04),
            Image.asset(
              "assets/images/messages.png",
              height: kHeight(.025),
            ),
            widthBox(.01),
            CustomText(
                text: "22 comments",
                textStyle: KTextStyles().normal(fontSize: 12)),
            Spacer(),
            Image.asset(
              "assets/images/users.png",
              height: kHeight(.04),
            )
          ],
        )
      ]),
    );
  }
}
