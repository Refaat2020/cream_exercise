import 'package:cream/core/constants/app_assets_roots.dart';
import 'package:cream/core/constants/app_strings.dart';
import 'package:cream/core/features/dashboard_feature/data/models/activity_tracker/activity_tracker_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityTrackerWidget extends StatelessWidget {
  const ActivityTrackerWidget({super.key});

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
      padding:
          EdgeInsets.only(left: 14.w, right: 20.w, top: 11.h, bottom: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.activityTracker,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                AppStrings.seeMore,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          ListView.separated(
            itemCount: ActivityTrackerModel.listOfActivityTracker.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 21.h),
            itemBuilder: (context, index) {
              return Wrap(
                spacing: 12.w,
                children: [
                  SvgPicture.asset(
                      ActivityTrackerModel.listOfActivityTracker[index].done
                          ? AppImages.completedIconSvg
                          : AppImages.uncompletedIconSvg),
                  // SizedBox(width: 11.w),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text:
                          "\n${ActivityTrackerModel.listOfActivityTracker[index].title}",
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                decoration: ActivityTrackerModel
                                        .listOfActivityTracker[index].done
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationThickness: 1.2,
                                height: 0.30,
                              ),
                      children: <TextSpan>[
                        if (ActivityTrackerModel
                                .listOfActivityTracker[index].subtitle !=
                            null)
                          TextSpan(
                              text:
                                  "\n ${ActivityTrackerModel.listOfActivityTracker[index].subtitle}",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(fontSize: 12.sp, height: 3)),
                      ],
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
