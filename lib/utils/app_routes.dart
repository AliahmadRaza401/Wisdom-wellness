import 'package:wisdom_and_wellness/screens/acceptance.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/add_number.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/proile_settings.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/signup.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/verification.dart';
import 'package:wisdom_and_wellness/screens/bottom_nav_bar.dart';
import 'package:wisdom_and_wellness/screens/courses.dart';
import 'package:wisdom_and_wellness/screens/daily_challenge.dart';
import 'package:wisdom_and_wellness/screens/event_search.dart';
import 'package:wisdom_and_wellness/screens/events.dart';
import 'package:wisdom_and_wellness/screens/feeds.dart';
import 'package:wisdom_and_wellness/screens/forums.dart';
import 'package:wisdom_and_wellness/screens/homescreen.dart';
import 'package:wisdom_and_wellness/screens/leader_board.dart';
import 'package:wisdom_and_wellness/screens/onboarding.dart';
import 'package:wisdom_and_wellness/screens/payment_method/view/card_details.dart';
import 'package:wisdom_and_wellness/screens/payment_method/view/payment_option.dart';
import 'package:wisdom_and_wellness/screens/payment_method/view/subscription.dart';
import 'package:wisdom_and_wellness/screens/profile_home.dart';

import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/bottomnav', page: () => BottomNavBar()),
  GetPage(name: '/', page: () => Onboarding()),
  GetPage(name: '/login', page: () => Login()),
  GetPage(name: '/signup', page: () => Signup()),
  GetPage(name: '/verification', page: () => Verification()),
  GetPage(name: '/addnumber', page: () => AddNumber()),
  GetPage(name: '/homescreen', page: () => Homescreen()),
  GetPage(name: '/profilehome', page: () => ProfileHome()),
  GetPage(name: '/profilesettings', page: () => ProfileSettings()),
  GetPage(name: '/subscription', page: () => Subscription()),
  GetPage(name: '/paymentoption', page: () => PaymentOption()),
  GetPage(name: '/carddetails', page: () => CardDetails()),
  GetPage(name: '/events', page: () => Events()),
  GetPage(name: '/feeds', page: () => Feeds()),
  GetPage(name: '/eventsearch', page: () => EventSearch()),
  GetPage(name: '/forums', page: () => Forums()),
  GetPage(name: '/courses', page: () => Courses()),
  GetPage(name: '/dailychallenge', page: () => DailyChallenge()),
  GetPage(name: '/acceptance', page: () => Acceptance()),
  GetPage(name: '/leaderboard', page: () => LeaderBoard()),
];
