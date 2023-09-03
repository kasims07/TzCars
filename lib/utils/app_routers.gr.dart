// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:user_app/screens/createAccount_screen/create_account_screen.dart'
    as _i2;
import 'package:user_app/screens/createNewPass_screen/create_new_password.dart'
    as _i1;
import 'package:user_app/screens/forgot_password_screen/forgot_password_screen.dart'
    as _i3;
import 'package:user_app/screens/onBoard_screens/onBord_screen.dart' as _i6;
import 'package:user_app/screens/signin_screen/signin_screen.dart' as _i7;
import 'package:user_app/screens/signup_screen/signup_screen.dart' as _i8;
import 'package:user_app/screens/splash_screen/splash_screen.dart' as _i9;
import 'package:user_app/screens/verify_otp_screen/verification_screen.dart'
    as _i5;
import 'package:user_app/screens/welcome_screen/get_start_screen.dart' as _i4;
import 'package:user_app/screens/welcome_screen/welcome_screen.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    ChangePassRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChangePassScreen(),
      );
    },
    CreateAccount.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateAccount(),
      );
    },
    ForgotPasRoutes.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ForgotPasScreens(),
      );
    },
    GetStartRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.GetStartScreen(),
      );
    },
    OTPVerifRoutes.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OTPVerifScreens(),
      );
    },
    OnBoardRoutes.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardScreens(),
      );
    },
    SignInRoutes.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignInScreens(),
      );
    },
    SignUpRoutes.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpScreens(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChangePassScreen]
class ChangePassRoute extends _i11.PageRouteInfo<void> {
  const ChangePassRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ChangePassRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePassRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateAccount]
class CreateAccount extends _i11.PageRouteInfo<void> {
  const CreateAccount({List<_i11.PageRouteInfo>? children})
      : super(
          CreateAccount.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccount';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ForgotPasScreens]
class ForgotPasRoutes extends _i11.PageRouteInfo<void> {
  const ForgotPasRoutes({List<_i11.PageRouteInfo>? children})
      : super(
          ForgotPasRoutes.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasRoutes';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GetStartScreen]
class GetStartRoute extends _i11.PageRouteInfo<void> {
  const GetStartRoute({List<_i11.PageRouteInfo>? children})
      : super(
          GetStartRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OTPVerifScreens]
class OTPVerifRoutes extends _i11.PageRouteInfo<void> {
  const OTPVerifRoutes({List<_i11.PageRouteInfo>? children})
      : super(
          OTPVerifRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OTPVerifRoutes';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardScreens]
class OnBoardRoutes extends _i11.PageRouteInfo<void> {
  const OnBoardRoutes({List<_i11.PageRouteInfo>? children})
      : super(
          OnBoardRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoutes';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignInScreens]
class SignInRoutes extends _i11.PageRouteInfo<void> {
  const SignInRoutes({List<_i11.PageRouteInfo>? children})
      : super(
          SignInRoutes.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoutes';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignUpScreens]
class SignUpRoutes extends _i11.PageRouteInfo<void> {
  const SignUpRoutes({List<_i11.PageRouteInfo>? children})
      : super(
          SignUpRoutes.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoutes';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashScreen]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.WelcomeScreen]
class WelcomeRoute extends _i11.PageRouteInfo<void> {
  const WelcomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
