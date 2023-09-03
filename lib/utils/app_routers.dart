import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'app_routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SplashRoute.page, initial: true),
        CustomRoute(
            page: WelcomeRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: GetStartRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: OnBoardRoutes.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: CreateAccount.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: SignUpRoutes.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: SignInRoutes.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: ForgotPasRoutes.page,
            transitionsBuilder: TransitionsBuilders.slideBottom,
            durationInMilliseconds: 400),
        CustomRoute(
            page: OTPVerifRoutes.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            page: ChangePassRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
      ];
}

/*class AppRouter {
  final RouteObserver<PageRoute> routeObserver;

  AppRouter() : routeObserver = RouteObserver<PageRoute>();

  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppScreens.otpVerification:
      */ /* final arguments = settings.arguments as Map<String, dynamic>;
        return _buildRoute(
          settings,
          VerificationScreen.create(
            arguments['mobileNum'],
          ),
        );*/ /*

      default:
        return _buildRoute(settings, Container());
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => builder,
    );
  }
}*/
