import 'package:get/get.dart';

import '../modules/customers/bindings/customers_binding.dart';
import '../modules/customers/views/customers_view.dart';
import '../modules/expenses/bindings/expenses_binding.dart';
import '../modules/expenses/views/expenses_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro_screen/bindings/intro_screen_binding.dart';
import '../modules/intro_screen/views/intro_screen_view.dart';
import '../modules/items/bindings/items_binding.dart';
import '../modules/items/views/items_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/purchase/bindings/purchase_binding.dart';
import '../modules/purchase/views/purchase_view.dart';
import '../modules/sales/bindings/sales_binding.dart';
import '../modules/sales/views/sales_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/suppliers/bindings/suppliers_binding.dart';
import '../modules/suppliers/views/suppliers_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INTRO_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRO_SCREEN,
      page: () => const IntroScreenView(),
      binding: IntroScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SALES,
      page: () => const SalesView(),
      binding: SalesBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMERS,
      page: () => const CustomersView(),
      binding: CustomersBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASE,
      page: () => const PurchaseView(),
      binding: PurchaseBinding(),
    ),
    GetPage(
      name: _Paths.SUPPLIERS,
      page: () => const SuppliersView(),
      binding: SuppliersBinding(),
    ),
    GetPage(
      name: _Paths.ITEMS,
      page: () => const ItemsView(),
      binding: ItemsBinding(),
    ),
    GetPage(
      name: _Paths.EXPENSES,
      page: () => const ExpensesView(),
      binding: ExpensesBinding(),
    ),
  ];
}
