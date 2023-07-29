import 'package:delivery_app/View/Screens/AllProduct/AllProduct.dart';
import 'package:delivery_app/View/Screens/Auth/forget_password/change_password/ChangePassword.dart';
import 'package:delivery_app/View/Screens/Auth/forget_password/email_sending/EmailSending.dart';
import 'package:delivery_app/View/Screens/Auth/forget_password/verification/vertificationScreen.dart';
import 'package:delivery_app/View/Screens/Categories/CategoriesScreen.dart';
import 'package:delivery_app/View/Screens/Details/DetailsScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Cart/CartScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Favorite/FavoriteScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Home/HomeScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Main.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/ProfileScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/screens/Notification.dart';
import 'package:delivery_app/View/Screens/Mian/Search/SearchScreen.dart';
import 'package:delivery_app/View/Screens/Payment/view_map/ViewMap.dart';
import 'package:delivery_app/View/Screens/Payment/first_payment/Payment.dart';
import 'package:delivery_app/View/Screens/Start/strat_screen.dart';
import 'package:get/get.dart';
import 'Core/Constant/route.dart';
import 'View/Screens/Payment/feed_back/Feedback.dart';
import 'View/Screens/Payment/payment_success/PaymentScuccess.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRoute.start,
      page: () => StartScreen(),
      // middlewares: [MiddleWare()],
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.forgetPassword,
      page: () => EmailSendingSceen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.verification,
      page: () => VertificationScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.changePassword,
      page: () => ChangePasswordScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.main,
      page: () => MainScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.home,
      page: () => HomeScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.profiel,
      page: () => const ProfileScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.search,
      page: () => SearchScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.favorite,
      page: () => FavoriteScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.cart,
      page: () => CartScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.notifiacation,
      page: () => NotificationScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.details,
      page: () => const DetailsScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.categories,
      page: () => CategoriesScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.allProduct,
      page: () => AllProductScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.payment,
      page: () => PaymentScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.paymentSccuess,
      page: () => PaymentSuccess(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.viewMap,
      page: () => ViewMapScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoute.feedBack,
      page: () => FeedbackScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 700)),
];
