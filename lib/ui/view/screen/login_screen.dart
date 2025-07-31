import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final idController = TextEditingController();
  final pwdController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon: Icon(Icons.arrow_back_rounded)),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 120.h),
            padding: EdgeInsets.only(left: 32.w, right: 32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("동아리 구하는 사람 모여라!\n미루지 말고 지금.", style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.bold),),
                Image.asset('assets/images/uswcircle_logo.png'),
                SizedBox(height: 10.h,),
                TextField(
                  controller: idController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '아이디',
                  ),
                ),
                SizedBox(height: 10.h,),
                TextField(
                  obscureText: true,
                  controller: pwdController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '패스워드',
                  ),
                ),
                SizedBox(height : 30.h),
                SizedBox(
                  width: double.infinity,
                  height: 56.h,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFFFFB052),
                      foregroundColor: Colors.white,
                      side: BorderSide(
                        width: 0.0, color: Colors.transparent
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    child: Text('로그인', style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: () {}, child: Text("아이디 찾기", style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w100),)),
                    SizedBox(width: 2.w, height: 14.h, child: const DecoratedBox(decoration: BoxDecoration(color: Color(0xFFFFB052)))),
                    TextButton(onPressed: () {}, child: Text("비밀번호 찾기", style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w100),)),
                    SizedBox(width: 2.w, height: 14.h, child: const DecoratedBox(decoration: BoxDecoration(color: Color(0xFFFFB052)))),
                    TextButton(onPressed: () {}, child: Text("회원가입", style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w100),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
