import 'package:cream/core/constants/app_assets_roots.dart';
import 'package:cream/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetPerformanceWidget extends StatelessWidget {
  const BudgetPerformanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 13.w, top: 28.h, right: 13.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 33.75,
            offset: Offset(0, 18.17),
            spreadRadius: 0,
          )
        ],
      ),
      padding: EdgeInsets.only(left: 14.w, right: 24.w, top: 11.h, bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.budgetPerformance,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 30.h),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Image.asset(AppImages.dartIconSVG,),
             Text(AppStrings.setupStm,style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500),)
           ],
         ),
          SizedBox(height: 20.h),

          Text(AppStrings.startTracking,style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500),)

        ],
      ),

    );
  }
}
