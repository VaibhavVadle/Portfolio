import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/utils/screen_util.dart';
import '../../provider/scroll_provider.dart';
import '../../widgets/custom_underline.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/skill_card.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      padding: EdgeInsets.symmetric(
        vertical: Sizes.s100.h,
        horizontal: ScreenUtil().screenWidth * 0.05,
      ),
      child: Column(
        children: [
          Text(
            "ABOUT ME",
            style: TextStyle(
              fontSize: Sizes.s38.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
              letterSpacing: Sizes.s5.sp,
            ),
          ),
          const CustomUnderline(),
          Text(
            "Here you will find more information about me, what I do, and my current skills mostly in terms\nof programming and technology",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s18.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: Sizes.s80.h),
          Text(
            "Get to know me!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s26.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: Sizes.s28.h),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: Sizes.s17.sp,
                color: AppColors.grey,
                letterSpacing: Sizes.s1.sp,
                wordSpacing: Sizes.s3.sp,
              ),
              children: const [
                TextSpan(text: "I'm a "),
                TextSpan(
                  text: "Flutter Developer ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                TextSpan(
                    text:
                        "building the Front-end of Android and IOS Applications that leads to the success of the overall product and also has solid knowledge of Restful API's. Check out some of my work in the "),
                TextSpan(
                  text: "Projects ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                TextSpan(text: "section."),
              ],
            ),
          ),
          SizedBox(height: Sizes.s10.h),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: Sizes.s17.sp,
                color: AppColors.grey,
                letterSpacing: Sizes.s1.sp,
                wordSpacing: Sizes.s3.sp,
              ),
              children: const [
                TextSpan(
                  text: "I'm open to ",
                ),
                TextSpan(
                  text: "Job ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                TextSpan(
                  text:
                      "opportunities where I can contribute, learn and grow. If you have a good opportunity that matches my skills and experience then don't hesitate to ",
                ),
                TextSpan(
                  text: "contact ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                TextSpan(text: "me.")
              ],
            ),
          ),
          SizedBox(height: Sizes.s38.h),
          PrimaryButton(
            height: Sizes.s50.h,
            width: Sizes.s160.w,
            text: "CONTACT",
            textStyle: TextStyle(
              fontSize: Sizes.s15.sp,
              letterSpacing: Sizes.s1.sp,
              color: AppColors.black,
              fontWeight: FontWeight.w900,
            ),
            onTap: () {
              context.read<ScrollProvider>().scrollToContact();
            },
          ),
          SizedBox(height: Sizes.s60.h),
          Text(
            "My Skills",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s26.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: Sizes.s28.h),
          const Wrap(
            alignment: WrapAlignment.center,
            children: [
              SkillCard(text: "Dart"),
              SkillCard(text: "Java"),
              SkillCard(text: "Flutter"),
              SkillCard(text: "Android"),
              SkillCard(text: "Responsive Design"),
              SkillCard(text: "Web Design"),
              SkillCard(text: "Firebase"),
              SkillCard(text: "GIT"),
              SkillCard(text: "Problem Solving"),
              SkillCard(text: "Quick Learner"),
              SkillCard(text: "Postman"),
              SkillCard(text: "Python Basics"),
            ],
          ),
          SizedBox(width: Sizes.s160.w),
        ],
      ),
    );
  }
}
