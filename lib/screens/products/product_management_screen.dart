import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/menu_app_controller.dart';
import '../../responsive.dart';
// You might need to import your existing header or create a custom one
import '../dashboard/components/header.dart';

class ProductManagementScreen extends StatelessWidget {
  const ProductManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Adds the Search Bar and Menu Button
            const Header(),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Product Management",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // We can add the 'Add New' logic here later
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("Add Product"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Placeholder for your Supabase Table
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2D3E),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Center(
                child: Text("Supabase Product Table will load here."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}