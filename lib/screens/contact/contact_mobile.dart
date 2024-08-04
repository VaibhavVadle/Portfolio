import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_color.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/utils/screen_util.dart';
import '../../core/utils/validation.dart';
import '../../provider/contact_provider.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_underline.dart';
import '../../widgets/primary_button.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void clearText() {
    name.text = "";
    email.text = "";
    message.text = "";
  }

  @override
  Widget build(BuildContext context) {
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
                          context.read<ContactProvider>().sendContactInfo(
                                name: name.text,
                                email: email.text,
                                message: message.text,
                              );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  "Thank you ${name.text} & I will contact ASAP."),
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
