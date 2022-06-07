// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:tfg_cco/app/modules/cart/bindings/cart_binding.dart';
import 'package:tfg_cco/app/modules/cart/views/cart_view.dart';
import 'package:tfg_cco/app/modules/edit/bindings/edit_binding.dart';
import 'package:tfg_cco/app/modules/edit/views/edit_view.dart';
import 'package:tfg_cco/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:tfg_cco/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:tfg_cco/app/modules/home/bindings/home_binding.dart';
import 'package:tfg_cco/app/modules/landing/bindings/landing_binding.dart';
import 'package:tfg_cco/app/modules/login/bindings/login_binding.dart';
import 'package:tfg_cco/app/modules/login/views/login_view.dart';
import 'package:tfg_cco/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:tfg_cco/app/modules/onboarding/views/introduction_view.dart';
import 'package:tfg_cco/app/modules/onboarding/views/onboarding_view.dart';
import 'package:tfg_cco/app/modules/plans/bindings/plans_binding.dart';
import 'package:tfg_cco/app/modules/plans/views/plans_view.dart';
import 'package:tfg_cco/app/modules/product/bindings/product_binding.dart';
import 'package:tfg_cco/app/modules/product/views/product_view.dart';
import 'package:tfg_cco/app/modules/profile/bindings/profile_binding.dart';
import 'package:tfg_cco/app/modules/register/bindings/register_binding.dart';
import 'package:tfg_cco/app/modules/register/views/register_view.dart';

import '../modules/landing/views/landing_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;
  static const ONLOGGED = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionView(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      bindings: [
        LandingBinding(),
        HomeBinding(),
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.PLANS,
      page: () => PlansView(),
      binding: PlansBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.EDIT,
      page: () => EditView(),
      binding: EditBinding(),
    ),
  ];
}
