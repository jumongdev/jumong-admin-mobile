    import 'package:flutter/material.dart';
    import 'package:flutter_svg/flutter_svg.dart';
    import 'package:provider/provider.dart';
    import '../../../controllers/menu_app_controller.dart';
    import '../../../responsive.dart';

    class SideMenu extends StatelessWidget {
      const SideMenu({
        Key? key,
      }) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset("assets/images/logo.png"),
              ),
              DrawerListTile(
                title: "Dashboard",
                svgSrc: "assets/icons/menu_dashboard.svg",
                press: () {
                  // This changes the screen to ProductManagementScreen
                  context.read<MenuAppController>().setSelectedIndex(0);

                  // Auto-close the side drawer if on mobile
                  if (!Responsive.isDesktop(context)) {
                    Navigator.pop(context);
                  }
                },
              ),
              DrawerListTile(
                title: "Transaction",
                svgSrc: "assets/icons/menu_tran.svg",
                press: () {},
              ),
              DrawerListTile(
                title: "Product Management",
                svgSrc: "assets/icons/drop_box.svg",
                press: () {
                  // This changes the screen to ProductManagementScreen
                  context.read<MenuAppController>().setSelectedIndex(1);

                  // Auto-close the side drawer if on mobile
                  if (!Responsive.isDesktop(context)) {
                    Navigator.pop(context);
                  }
                },
              ),
              DrawerListTile(
                title: "Documents",
                svgSrc: "assets/icons/menu_doc.svg",
                press: () {},
              ),
              DrawerListTile(
                title: "Store",
                svgSrc: "assets/icons/menu_store.svg",
                press: () {},
              ),
              DrawerListTile(
                title: "Notification",
                svgSrc: "assets/icons/menu_notification.svg",
                press: () {},
              ),
              DrawerListTile(
                title: "Profile",
                svgSrc: "assets/icons/menu_profile.svg",
                press: () {},
              ),
              DrawerListTile(
                title: "Settings",
                svgSrc: "assets/icons/menu_setting.svg",
                press: () {},
              ),
            ],
          ),
        );
      }
    }

    class DrawerListTile extends StatelessWidget {
      const DrawerListTile({
        Key? key,
        // For selecting those three line once press "Command+D"
        required this.title,
        required this.svgSrc,
        required this.press,
      }) : super(key: key);

      final String title, svgSrc;
      final VoidCallback press;

      @override
      Widget build(BuildContext context) {
        return ListTile(
          onTap: press,
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            svgSrc,
            colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
            height: 16,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.white54),
          ),
        );
      }
    }
