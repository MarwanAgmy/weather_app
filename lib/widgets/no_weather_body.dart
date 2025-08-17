import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // دي بتخلي الكونتينر ياخد حجم الشاشة بالكامل
      child: Image.asset(
        'assets/images/Lucid_Origin_generate_a_vibrant_digital_image_with_a_unique_ba_2.jpg',
        fit: BoxFit.cover, // دي بتخلي الصورة تغطي كل المساحة من غير فراغات
      ),
    );
  }
}




// Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'there is no weather 😔 start',
//               style: TextStyle(
//                 fontSize: 30,
//               ),
//             ),
//             Text(
//               'searching now 🔍',
//               style: TextStyle(
//                 fontSize: 30,
//               ),
//             )
//           ],
//         ),
//       ),
//     )