import 'package:flutter/material.dart';
import 'package:protfolio_web/core/constants/app_color.dart';
import 'package:protfolio_web/core/constants/app_sizes.dart';
import 'package:protfolio_web/core/utils/screen_util.dart';
import 'package:protfolio_web/widgets/custom_underline.dart';
import 'package:protfolio_web/widgets/primary_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileContainer2(),
      desktop: (context) => desktopContainer2(),
    );
  }

  Widget desktopContainer2() {
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
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.s50.w,
              vertical: Sizes.s80.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get to know me!",
                        style: TextStyle(
                          fontSize: Sizes.s26.sp,
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: Sizes.s28.h),
                      RichText(
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
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(width: Sizes.s160.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Skills",
                        style: TextStyle(
                          fontSize: Sizes.s26.sp,
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: Sizes.s28.h),
                      Wrap(
                        children: [
                          skillCard(text: "Dart"),
                          skillCard(text: "Flutter"),
                          skillCard(text: "Responsive Design"),
                          skillCard(text: "Firebase"),
                          skillCard(text: "GIT"),
                          skillCard(text: "Problem Solving"),
                          skillCard(text: "Quick Learner"),
                          skillCard(text: "Postman"),
                          skillCard(text: "Python Basics"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget mobileContainer2() {
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
            onTap: () {},
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
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              skillCard(text: "Dart"),
              skillCard(text: "Flutter"),
              skillCard(text: "Responsive Design"),
              skillCard(text: "Firebase"),
              skillCard(text: "GIT"),
              skillCard(text: "Problem Solving"),
              skillCard(text: "Quick Learner"),
              skillCard(text: "Postman"),
              skillCard(text: "Python Basics"),
            ],
          ),
          SizedBox(width: Sizes.s160.w),
        ],
      ),
    );
  }

  Widget skillCard({required String text}) {
    return Container(
      margin: EdgeInsets.only(
        right: Sizes.s14.w,
        bottom: Sizes.s14.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.s18.w,
        vertical: Sizes.s9.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(Sizes.s5.r),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: Sizes.s15.sp,
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
