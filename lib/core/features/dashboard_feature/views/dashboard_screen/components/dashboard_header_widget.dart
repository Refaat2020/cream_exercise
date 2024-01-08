import 'package:cream/core/constants/app_assets_roots.dart';
import 'package:cream/core/constants/app_colors.dart';
import 'package:cream/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.night, boxShadow: [
        BoxShadow(
          color: AppColors.black,
          blurRadius: 29,
          offset: Offset(0, 6),
          spreadRadius: -15,
        )
      ]),
      padding:
          EdgeInsets.only(left: 26.w, right: 26.w, top: 50.h, bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppStrings.dashboard,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              // const Spacer(),
              Column(
                children: [
                  Image.asset(
                    AppImages.profileIcon,
                  ),
                  const SizedBox(height: 1),
                  Text(
                    AppStrings.profile,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Wrap(
            spacing: 100,
            runSpacing: -50,
            children: [
              Image.asset(AppImages.badgeIcon),
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppStrings.percentage25,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                  )),
                          Text(AppStrings.percentage50,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                  )),
                          Text(AppStrings.percentage75,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                  )),
                          Text(AppStrings.percentage100,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                  )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    LinearProgressIndicator(
                      value: 0.35, // 75% progress
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                      backgroundColor: AppColors.emptyBarColor,
                      borderRadius: BorderRadius.circular(6),
                      minHeight: 15.h,
                    ),
                    SizedBox(height: 3.h),
                    Text(AppStrings.profileCompletion,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(fontSize: 11.sp, color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
