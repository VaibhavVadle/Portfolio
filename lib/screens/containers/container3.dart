import 'package:flutter/material.dart';
import 'package:protfolio_web/core/constants/app_assets.dart';
import 'package:protfolio_web/core/constants/app_color.dart';
import 'package:protfolio_web/core/constants/app_sizes.dart';
import 'package:protfolio_web/core/utils/screen_util.dart';
import 'package:protfolio_web/core/utils/validation.dart';
import 'package:protfolio_web/widgets/custom_text_field.dart';
import 'package:protfolio_web/widgets/custom_underline.dart';
import 'package:protfolio_web/widgets/primary_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopContainer3(),
      mobile: (context) => mobileContainer3(),
    );
  }

  Widget mobileContainer3() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        image: DecorationImage(
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          opacity: 0.2,
          image: AssetImage(
            AppAssets.darkBackground,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: Sizes.s100.h,
        horizontal: ScreenUtil().screenWidth * 0.05,
      ),
      child: Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontSize: Sizes.s38.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
              letterSpacing: Sizes.s5.sp,
            ),
          ),
          const CustomUnderline(),
          Text(
            "Feel free to Contact me by submitting the form below and I will get back to you as soon as possible",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s18.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: Sizes.s80.h),
          Container(
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(Sizes.s5.r),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.s40.w,
              vertical: Sizes.s40.h,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: name,
                    labelText: "Name",
                    hintText: "Enter Your Name",
                    validator: (value) => Validation.isEmpty(
                      value!,
                      errorText: "Please Enter Your Name",
                    ),
                  ),
                  SizedBox(height: Sizes.s20.h),
                  CustomTextField(
                    controller: email,
                    labelText: "Email",
                    hintText: "Enter Your Email",
                    validator: (value) => Validation.isEmpty(
                      value!,
                      errorText: "Please Enter Your Email",
                    ),
                  ),
                  SizedBox(height: Sizes.s20.h),
                  CustomTextField(
                    controller: message,
                    labelText: "Message",
                    hintText: "Enter Your Message",
                    validator: (value) => Validation.isEmpty(
                      value!,
                      errorText: "Please Enter Your Message",
                    ),
                    maxLine: 10,
                  ),
                  SizedBox(height: Sizes.s40.h),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: PrimaryButton(
                      height: Sizes.s45.h,
                      width: Sizes.s150.w,
                      textStyle: TextStyle(
                        fontSize: Sizes.s16.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w800,
                        letterSpacing: Sizes.s1.sp,
                      ),
                      text: "SUBMIT",
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text("Your response is successfully sended."),
                            ),
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget desktopContainer3() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        image: DecorationImage(
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          opacity: 0.2,
          image: AssetImage(
            AppAssets.darkBackground,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: Sizes.s100.h,
        horizontal: ScreenUtil().screenWidth * 0.25,
      ),
      child: Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontSize: Sizes.s38.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
              letterSpacing: Sizes.s5.sp,
            ),
          ),
          const CustomUnderline(),
          Text(
            "Feel free to Contact me by submitting the form below and I will get back to you as soon as possible",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Sizes.s18.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: Sizes.s80.h),
          Container(
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(Sizes.s5.r),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.s40.w,
              vertical: Sizes.s40.h,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: "Name",
                    hintText: "Enter Your Name",
                    validator: (value) => Validation.isEmpty(
                      value!,
                      errorText: "Please Enter Your Name",
                    ),
                  ),
                  SizedBox(height: Sizes.s20.h),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: "Email",
                    hintText: "Enter Your Email",
                    validator: (value) => Validation.isEmpty(
                      value!,
                      errorText: "Please Enter Your Email",
                    ),
                  ),
                  SizedBox(height: Sizes.s20.h),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: "Message",
                    hintText: "Enter Your Message",
                    validator: (value) => Validation.isEmpty(
                      value!,
                      errorText: "Please Enter Your Message",
                    ),
                    maxLine: 10,
                  ),
                  SizedBox(height: Sizes.s40.h),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: PrimaryButton(
                      height: Sizes.s45.h,
                      width: Sizes.s150.w,
                      textStyle: TextStyle(
                        fontSize: Sizes.s16.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w800,
                        letterSpacing: Sizes.s1.sp,
                      ),
                      text: "SUBMIT",
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text("Your response is successfully sended."),
                            ),
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
