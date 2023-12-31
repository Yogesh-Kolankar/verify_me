import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:textfield_datepicker/textfield_datepicker.dart';
import 'package:intl/intl.dart';
import 'package:varify_me/document.dart';

class UploadResources extends StatefulWidget {
  const UploadResources({super.key});

  @override
  State<UploadResources> createState() => _UploadResourcesState();
}

class _UploadResourcesState extends State<UploadResources> {
  var datecontroller = TextEditingController();
  var monthcontroller = TextEditingController();
  var yearcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "lib/images/bottamgarage.png",
                    height: 30.h,
                    scale: 1,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "lib/images/bottamsim.png",
                    height: 30.h,
                    scale: 1,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "lib/images/bottamperson.png",
                    height: 20.h,
                    scale: 1,
                  ),
                  label: "")
            ]),
        body: Column(children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r)),
                color: Colors.yellow.shade200,
              ),
              height: 120.sp,
            ),
            Positioned(
              left: 30.sp,
              top: 60.sp,
              child: Text("Upload Resources",
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          DottedBorder(
              color: Colors.grey,
              dashPattern: [4, 4],
              strokeWidth: 1.w,
              borderType: BorderType.RRect,
              radius: Radius.circular(6.r),
              borderPadding: EdgeInsets.all(4),
              child: Container(
                height: 130.sp,
                width: 320.sp,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      //color: Colors.amber,
                      child: Image.asset(
                        'lib/images/cloudcomputing.png',
                        height: 60.sp,
                      ),
                    ),
                    Text(
                      "Upload Resources",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                //color: Colors.black,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter Expiry Date: ",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 60.w,
                child: TextfieldDatePicker(
                  textAlign: TextAlign.center,
                  textfieldDatePickerController: datecontroller,
                  cupertinoDatePickerBackgroundColor: Colors.white,
                  cupertinoDatePickerMaximumDate: DateTime(2099),
                  cupertinoDatePickerMaximumYear: 2099,
                  cupertinoDatePickerMinimumYear: 1990,
                  cupertinoDatePickerMinimumDate: DateTime(1990),
                  cupertinoDateInitialDateTime: DateTime.now(),
                  materialDatePickerFirstDate: DateTime.now(),
                  materialDatePickerInitialDate: DateTime.now(),
                  materialDatePickerLastDate: DateTime(2099),
                  preferredDateFormat: DateFormat("dd"),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey)),
                      //contentPadding:

                      hintText: "DD",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10.sp),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey)),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey.shade100))),
                ),
              ),
              SizedBox(
                width: 60.w,
                child: TextfieldDatePicker(
                  textAlign: TextAlign.center,
                  textfieldDatePickerController: monthcontroller,
                  cupertinoDatePickerBackgroundColor: Colors.white,
                  cupertinoDatePickerMaximumDate: DateTime(2099),
                  cupertinoDatePickerMaximumYear: 2099,
                  cupertinoDatePickerMinimumYear: 1990,
                  cupertinoDatePickerMinimumDate: DateTime(1990),
                  cupertinoDateInitialDateTime: DateTime.now(),
                  materialDatePickerFirstDate: DateTime.now(),
                  materialDatePickerInitialDate: DateTime.now(),
                  materialDatePickerLastDate: DateTime(2099),
                  preferredDateFormat: DateFormat("MMM"),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 14.h),
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey)),
                      //contentPadding:

                      hintText: "MM",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10.sp),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey)),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey.shade100))),
                ),
              ),
              SizedBox(
                width: 70.w,
                child: TextfieldDatePicker(
                  textAlign: TextAlign.center,
                  textfieldDatePickerController: yearcontroller,
                  cupertinoDatePickerBackgroundColor: Colors.white,
                  cupertinoDatePickerMaximumDate: DateTime(2099),
                  cupertinoDatePickerMaximumYear: 2099,
                  cupertinoDatePickerMinimumYear: 1990,
                  cupertinoDatePickerMinimumDate: DateTime(1990),
                  cupertinoDateInitialDateTime: DateTime.now(),
                  materialDatePickerFirstDate: DateTime.now(),
                  materialDatePickerInitialDate: DateTime.now(),
                  materialDatePickerLastDate: DateTime(2099),
                  preferredDateFormat: DateFormat("yyyy"),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 14.h),
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey)),
                      //contentPadding:

                      hintText: "YYYY",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10.sp),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey)),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: Colors.grey.shade100))),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),

              // BoxShadow(
              //   color: Colors.grey.shade900,
              //   offset: Offset(1.0, 6.0), //(x,y)
              //   blurRadius: 16.0,
              // ),

              //borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
            width: 320.w,
            height: 50.h,
            child: Center(
                child: Text(
              "Upload Resources",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            )),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Or",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DocumentScreen(),
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.amber,
              ),
              width: 320.sp,
              height: 130.sp,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.amber,
                    child: Image.asset(
                      'lib/images/scan1.png',
                      height: 60.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Scan Resources",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
