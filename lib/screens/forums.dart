import 'package:wisdom_and_wellness/screens/event_search.dart';
import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class Forums extends StatelessWidget {
  const Forums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(.06),
                KAppBarText(
                  title: "Chats",
                  img: "assets/images/6.png",
                ),
                heightBox(.02),
                Ktextfield(
                    color: KColors.bgcolor.withOpacity(.5),
                    lable: "Search for podcasts",
                    img: "assets/images/search.png",
                    controller: TextEditingController()),
                heightBox(.02),
                CustomText(
                    text: "Community Forums",
                    textStyle: KTextStyles()
                        .normal(fontSize: 14, fontWeight: FontWeight.w500)),
                CustomText(
                    text: "Join The Conversation",
                    textStyle: KTextStyles()
                        .normal(fontSize: 17, fontWeight: FontWeight.w600)),
                heightBox(.02),
                SizedBox(
                  height: kHeight(.04),
                  width: kWidth(.9),
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CategoryBox(
                          index: index,
                        );
                      },
                      separatorBuilder: (context, index) => widthBox(.04),
                      itemCount: 4),
                ),
                heightBox(.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "Forums",
                        textStyle: KTextStyles()
                            .normal(fontSize: 17, fontWeight: FontWeight.bold)),
                    CustomText(
                        text: "See All",
                        textStyle: KTextStyles().normal(
                          fontSize: 14,
                        )),
                  ],
                ),
                heightBox(.02),
                ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const ForumsBox();
                    },
                    separatorBuilder: (context, index) => heightBox(.02),
                    itemCount: 2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final int index;
  const CategoryBox({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: index == 0 ? KColors.kPrimary : KColors.noColor))),
      child: CustomText(
        text: "Trending",
        textStyle: KTextStyles().normal(
            fontSize: 17,
            fontWeight: index == 0 ? FontWeight.bold : FontWeight.w400),
      ),
    );
  }
}
