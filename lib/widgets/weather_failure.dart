import 'package:flutter/material.dart';

class WeatherFailure extends StatelessWidget {
  const WeatherFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // دي بتخلي الكونتينر ياخد حجم الشاشة بالكامل
      child: Image.asset(
        'assets/images/ChatGPT Image Aug 17, 2025, 09_57_16 PM.png',
        fit: BoxFit.cover, // دي بتخلي الصورة تغطي كل المساحة من غير فراغات
      ),
    );
  }
}
