import 'package:get/get.dart';
import 'package:payment_app/controllers/auth_controller.dart';
import 'package:payment_app/screens/login_screen.dart';
import 'package:payment_app/screens/signup_screen.dart';
import 'package:payment_app/screens/welcome_screen.dart';

final List<GetPage> routes = [
  GetPage(
    name: '/login',
    page: () => const LoginScreen(),
    binding: BindingsBuilder(() {
      Get.lazyPut<AuthController>(() => AuthController());
    }),
  ),
  GetPage(
    name: '/signup',
    page: () => const SignUpScreen(),
    binding: BindingsBuilder(() {
      Get.lazyPut<AuthController>(() => AuthController());
    }),
  ),
  GetPage(
    name: '/welcomepage',
    page: () => const WelcomeScreen(),
    // binding: BindingsBuilder(() {
    //   Get.lazyPut<HomeController>(() => HomeController());
    // }
    // )
  )
];
