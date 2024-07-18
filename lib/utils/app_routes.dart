import 'package:wisdom_and_wellness/screens/acceptance.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/add_number.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/profile_settings.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/signup.dart';
import 'package:wisdom_and_wellness/screens/auth/login/view/verification.dart';
import 'package:wisdom_and_wellness/screens/bottom_nav_bar.dart';
import 'package:wisdom_and_wellness/screens/chat.dart';
import 'package:wisdom_and_wellness/screens/chat_notification.dart';
import 'package:wisdom_and_wellness/screens/courses.dart';
import 'package:wisdom_and_wellness/screens/daily_challenge.dart';
import 'package:wisdom_and_wellness/screens/episode_details.dart';
import 'package:wisdom_and_wellness/screens/event_search.dart';
import 'package:wisdom_and_wellness/screens/events.dart';
import 'package:wisdom_and_wellness/screens/feeds.dart';
import 'package:wisdom_and_wellness/screens/forums.dart';
import 'package:wisdom_and_wellness/screens/homescreen.dart';
import 'package:wisdom_and_wellness/screens/leader_board.dart';
import 'package:wisdom_and_wellness/screens/notification.dart';
import 'package:wisdom_and_wellness/screens/onboarding.dart';
import 'package:wisdom_and_wellness/screens/payment_method/view/card_details.dart';
import 'package:wisdom_and_wellness/screens/payment_method/view/payment_option.dart';
import 'package:wisdom_and_wellness/screens/payment_method/view/subscription.dart';
import 'package:wisdom_and_wellness/screens/profile_home.dart';
import 'package:wisdom_and_wellness/screens/video.dart';

import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/bottomnav', page: () => BottomNavBar()),
  GetPage(name: '/', page: () => const Onboarding()),
  GetPage(name: '/login', page: () => Login()),
  GetPage(name: '/signup', page: () => Signup()),
  GetPage(name: '/verification', page: () => Verification()),
  GetPage(name: '/addnumber', page: () => AddNumber()),
  GetPage(name: '/homescreen', page: () => const Homescreen()),
  GetPage(name: '/profilehome', page: () => const ProfileHome()),
  GetPage(name: '/profilesettings', page: () => const ProfileSettings()),
  GetPage(name: '/subscription', page: () => const Subscription()),
  GetPage(name: '/paymentoption', page: () => const PaymentOption()),
  GetPage(name: '/carddetails', page: () => const CardDetails()),
  GetPage(name: '/events', page: () => const Events()),
  GetPage(name: '/feeds', page: () => const Feeds()),
  GetPage(name: '/eventsearch', page: () => const EventSearch()),
  GetPage(name: '/forums', page: () => const Forums()),
  GetPage(name: '/courses', page: () => const Courses()),
  GetPage(name: '/dailychallenge', page: () => DailyChallenge()),
  GetPage(name: '/acceptance', page: () => const Acceptance()),
  GetPage(name: '/leaderboard', page: () => const LeaderBoard()),
  GetPage(name: '/episodedetails', page: () => EpisodeDetails()),
  GetPage(name: '/chat', page: () => Chat()),
  GetPage(name: '/chatnotification', page: () => ChatNotification()),
  GetPage(name: '/notification', page: () => Notifications()),
  GetPage(name: '/video', page: () => Video()),
];
