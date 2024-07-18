import 'package:wisdom_and_wellness/screens/courses.dart';
import 'package:wisdom_and_wellness/screens/events.dart';
import 'package:wisdom_and_wellness/screens/feeds.dart';
import 'package:wisdom_and_wellness/screens/forums.dart';
import 'package:wisdom_and_wellness/screens/homescreen.dart';
import 'package:wisdom_and_wellness/screens/profile_home.dart';

import '../widgets/widgets_imports.dart';

class BottomNavBar extends StatelessWidget {
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());

  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (bottomNavController.selectedIndex.value) {
          case 0:
            return const Homescreen();
          case 1:
            return const Forums();
          case 2:
            return const Feeds();
          case 3:
            return const Events();
          case 4:
            return const Courses();
          case 5:
            return const ProfileHome();
          default:
            return const HomeSeasonBox();
        }
      }),
      bottomNavigationBar: Obx(() => SizedBox(
            height: kHeight(.08),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: bottomNavController.selectedIndex.value == 0
                      ? Image.asset(
                          "assets/images/b1.png",
                          height: kHeight(0.035),
                          color: KColors.kPrimary,
                        )
                      : Image.asset(
                          "assets/images/b1.png",
                          height: kHeight(0.035),
                          color: KColors.bgcolor,
                        ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: bottomNavController.selectedIndex.value == 1
                      ? Image.asset(
                          "assets/images/b2.png",
                          height: kHeight(0.035),
                          color: KColors.kPrimary,
                        )
                      : Image.asset(
                          "assets/images/b2.png",
                          height: kHeight(0.035),
                          color: KColors.bgcolor,
                        ),
                  label: 'Content',
                ),
                BottomNavigationBarItem(
                  icon: bottomNavController.selectedIndex.value == 2
                      ? Image.asset(
                          "assets/images/b3.png",
                          height: kHeight(0.035),
                          color: KColors.kPrimary,
                        )
                      : Image.asset(
                          "assets/images/b3.png",
                          height: kHeight(0.035),
                          color: KColors.bgcolor,
                        ),
                  label: 'Community',
                ),
                BottomNavigationBarItem(
                  icon: bottomNavController.selectedIndex.value == 3
                      ? Image.asset(
                          "assets/images/b4.png",
                          height: kHeight(0.035),
                          color: KColors.kPrimary,
                        )
                      : Image.asset(
                          "assets/images/b4.png",
                          height: kHeight(0.035),
                          color: KColors.bgcolor,
                        ),
                  label: 'Calendar',
                ),
                BottomNavigationBarItem(
                  icon: bottomNavController.selectedIndex.value == 4
                      ? Image.asset(
                          "assets/images/b5.png",
                          height: kHeight(0.035),
                          color: KColors.kPrimary,
                        )
                      : Image.asset(
                          "assets/images/b5.png",
                          height: kHeight(0.035),
                          color: KColors.bgcolor,
                        ),
                  label: 'Courses',
                ),
                BottomNavigationBarItem(
                  icon: bottomNavController.selectedIndex.value == 5
                      ? Image.asset(
                          "assets/images/b6.png",
                          height: kHeight(0.035),
                          color: KColors.kPrimary,
                        )
                      : Image.asset(
                          "assets/images/b6.png",
                          height: kHeight(0.035),
                          color: KColors.bgcolor,
                        ),
                  label: 'Profile',
                ),
              ],
              currentIndex: bottomNavController.selectedIndex.value,
              onTap: (index) {
                bottomNavController.changeIndex(index);
              },
              fixedColor: KColors.kPrimary,
              selectedLabelStyle:
                  const TextStyle(fontSize: 10, color: KColors.kPrimary),
              unselectedLabelStyle:
                  const TextStyle(fontSize: 10, color: KColors.bgcolor),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
            ),
          )),
    );
  }
}

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
