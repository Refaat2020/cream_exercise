import 'package:cream/core/constants/app_colors.dart';
import 'package:cream/core/features/dashboard_feature/views/dashboard_screen/components/dashboard_header_widget.dart';
import 'package:cream/core/features/dashboard_feature/views/dashboard_screen/components/tips_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/activity_tracker_widget.dart';
import 'components/budget_performance_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.night,
    ));
    return const Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DashboardHeaderWidget(),
            ActivityTrackerWidget(),
            BudgetPerformanceWidget(),
            TipsWidget(),

          ],
        ),
      ),

    );
  }
}
