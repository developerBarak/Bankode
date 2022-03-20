import 'package:bankode/ui/shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes.dart';

class EntryView extends StatelessWidget {
  const EntryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color(0xFF263238)));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF263238),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200.h,
                ),
                Text(
                  "Let's Get Started,",
                  style: GoogleFonts.rubik(
                      fontSize: 34.sp,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Enter your information below",
                  style: GoogleFonts.rubik(
                      fontSize: 14.sp,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 150.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Nick Name',
                    hintStyle: const TextStyle(color: kEntryLightColor, fontWeight: FontWeight.w100),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(color: kPrimaryColor, ),),
                    enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: kEntryLightColor)),
                    focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: kPrimaryColor)),
                  ),
                ),
                SizedBox(height: 50.h,),
                SizedBox(width: double.infinity,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 15.h),primary: kEntryLightColor,),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(RouteGenerator.homeView),
                    child: Text('Continue', style: GoogleFonts.rubik(fontSize: 20 , fontWeight: FontWeight.w700),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}