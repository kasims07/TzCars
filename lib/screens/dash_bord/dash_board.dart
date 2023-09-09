import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/utils/app_routers.gr.dart';

@RoutePage()
class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomePageRoute(),
        OrdersRoute(),
        MessageRoute(),
        WallateRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedLabelStyle: GoogleFonts.urbanist(
              fontSize: 10.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAssetPath.icHomeUnSelected),
              activeIcon: SvgPicture.asset(ImageAssetPath.icHomeSelected),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAssetPath.icShopingUnSelected),
              activeIcon: SvgPicture.asset(ImageAssetPath.icShopingSelected),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAssetPath.icMessageUnSelected),
              activeIcon: SvgPicture.asset(ImageAssetPath.icMessageSelected),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAssetPath.icWalletUnSelected),
              activeIcon: SvgPicture.asset(ImageAssetPath.icWalletSelected),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(ImageAssetPath.icPersionUnSelected),
              activeIcon: SvgPicture.asset(ImageAssetPath.icPersionSelected),
              label: 'Account',
            ),
          ],
        );
      },
    );
  }
}
