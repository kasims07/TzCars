// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:user_app/screens/createAccount_screen/create_account_screen.dart'
    as _i2;
import 'package:user_app/screens/createNewPass_screen/create_new_password.dart'
    as _i1;
import 'package:user_app/screens/dash_bord/dash_board.dart' as _i3;
import 'package:user_app/screens/dash_bord/home_screen/home_route.dart' as _i7;
import 'package:user_app/screens/dash_bord/home_screen/home_screen.dart' as _i6;
import 'package:user_app/screens/dash_bord/message_screen/message_screen.dart'
    as _i8;
import 'package:user_app/screens/dash_bord/orders_screen/order_screen.dart'
    as _i12;
import 'package:user_app/screens/dash_bord/profile_screen/profile_route.dart'
    as _i14;
import 'package:user_app/screens/dash_bord/profile_screen/profile_screen.dart'
    as _i13;
import 'package:user_app/screens/dash_bord/wallate_screen/wallate_screen.dart'
    as _i19;
import 'package:user_app/screens/forgot_password_screen/forgot_password_screen.dart'
    as _i4;
import 'package:user_app/screens/notification_screen/notification_screen.dart'
    as _i9;
import 'package:user_app/screens/onBoard_screens/onBord_screen.dart' as _i11;
import 'package:user_app/screens/search_screen/search_screen.dart' as _i15;
import 'package:user_app/screens/signin_screen/signin_screen.dart' as _i16;
import 'package:user_app/screens/signup_screen/signup_screen.dart' as _i17;
import 'package:user_app/screens/splash_screen/splash_screen.dart' as _i18;
import 'package:user_app/screens/verify_otp_screen/verification_screen.dart'
    as _i10;
import 'package:user_app/screens/welcome_screen/get_start_screen.dart' as _i5;
import 'package:user_app/screens/welcome_screen/welcome_screen.dart' as _i20;

abstract class $AppRouter extends _i21.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    ChangePassRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChangePassScreen(),
      );
    },
    CreateAccount.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateAccount(),
      );
    },
    DashBoard.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashBoard(),
      );
    },
    ForgotPasRoutes.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ForgotPasScreens(),
      );
    },
    GetStartRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.GetStartScreen(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePageScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeRoute(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MessageScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationScreen(),
      );
    },
    OTPVerifRoutes.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OTPVerifScreens(),
      );
    },
    OnBoardRoutes.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnBoardScreens(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.OrdersScreen(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfilePageScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileRoute(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SearchScreen(),
      );
    },
    SignInRoutes.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SignInScreens(),
      );
    },
    SignUpRoutes.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SignUpScreens(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SplashScreen(),
      );
    },
    WallateRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.WallateScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChangePassScreen]
class ChangePassRoute extends _i21.PageRouteInfo<void> {
  const ChangePassRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ChangePassRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePassRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateAccount]
class CreateAccount extends _i21.PageRouteInfo<void> {
  const CreateAccount({List<_i21.PageRouteInfo>? children})
      : super(
          CreateAccount.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccount';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashBoard]
class DashBoard extends _i21.PageRouteInfo<void> {
  const DashBoard({List<_i21.PageRouteInfo>? children})
      : super(
          DashBoard.name,
          initialChildren: children,
        );

  static const String name = 'DashBoard';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ForgotPasScreens]
class ForgotPasRoutes extends _i21.PageRouteInfo<void> {
  const ForgotPasRoutes({List<_i21.PageRouteInfo>? children})
      : super(
          ForgotPasRoutes.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasRoutes';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i5.GetStartScreen]
class GetStartRoute extends _i21.PageRouteInfo<void> {
  const GetStartRoute({List<_i21.PageRouteInfo>? children})
      : super(
          GetStartRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePageScreen]
class HomePageRoute extends _i21.PageRouteInfo<void> {
  const HomePageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeRoute]
class HomeRoute extends _i21.PageRouteInfo<void> {
  const HomeRoute({List<_i21.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MessageScreen]
class MessageRoute extends _i21.PageRouteInfo<void> {
  const MessageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NotificationScreen]
class NotificationRoute extends _i21.PageRouteInfo<void> {
  const NotificationRoute({List<_i21.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OTPVerifScreens]
class OTPVerifRoutes extends _i21.PageRouteInfo<void> {
  const OTPVerifRoutes({List<_i21.PageRouteInfo>? children})
      : super(
          OTPVerifRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OTPVerifRoutes';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnBoardScreens]
class OnBoardRoutes extends _i21.PageRouteInfo<void> {
  const OnBoardRoutes({List<_i21.PageRouteInfo>? children})
      : super(
          OnBoardRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoutes';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OrdersScreen]
class OrdersRoute extends _i21.PageRouteInfo<void> {
  const OrdersRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ProfilePageScreen]
class ProfilePageRoute extends _i21.PageRouteInfo<void> {
  const ProfilePageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ProfileRoute]
class ProfileRoute extends _i21.PageRouteInfo<void> {
  const ProfileRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SearchScreen]
class SearchRoute extends _i21.PageRouteInfo<void> {
  const SearchRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SignInScreens]
class SignInRoutes extends _i21.PageRouteInfo<void> {
  const SignInRoutes({List<_i21.PageRouteInfo>? children})
      : super(
          SignInRoutes.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoutes';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SignUpScreens]
class SignUpRoutes extends _i21.PageRouteInfo<void> {
  const SignUpRoutes({List<_i21.PageRouteInfo>? children})
      : super(
          SignUpRoutes.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoutes';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SplashScreen]
class SplashRoute extends _i21.PageRouteInfo<void> {
  const SplashRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i19.WallateScreen]
class WallateRoute extends _i21.PageRouteInfo<void> {
  const WallateRoute({List<_i21.PageRouteInfo>? children})
      : super(
          WallateRoute.name,
          initialChildren: children,
        );

  static const String name = 'WallateRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i20.WelcomeScreen]
class WelcomeRoute extends _i21.PageRouteInfo<void> {
  const WelcomeRoute({List<_i21.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}
