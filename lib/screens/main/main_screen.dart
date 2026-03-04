import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/menu_app_controller.dart';
import '../../responsive.dart';
import '../dashboard/dashboard_screen.dart';
// Create this file next!
import '../products/product_management_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              // Consumer listens to the selectedIndex in MenuAppController
              child: Consumer<MenuAppController>(
                builder: (context, menuController, child) {
                  // Switch the screen based on the index
                  if (menuController.selectedIndex == 1) {
                    return ProductManagementScreen();
                  }
                  return DashboardScreen();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}