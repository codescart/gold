// import 'package:flutter/material.dart';
//
//
//
// class NumberPage extends StatelessWidget {
//   const NumberPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 400,
//             width: 300,
//             color: Colors.cyanAccent,
//             child: TextFormField(
//               keyboardType: TextInputType.number,
//               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
//               maxLength: 10,
//               decoration: InputDecoration(
//                 counterText: "",
//                 filled: true,
//                 fillColor: Colors.red.withOpacity(0.1),
//                 hintText: "  Mobile number",
//                 hintStyle: TextStyle(color: Colors.grey,
//                     fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Proxima Nova"),
//                 prefixIcon:  Padding(
//                   padding: const EdgeInsets.only(top:6,bottom: 6,left: 6,right: 6),
//                   child: ClipRRect(
//                       borderRadius: BorderRadius.circular(5),
//                       child: Image.asset('assets/images/indianflag.png',fit: BoxFit.fill,
//                         height: 8,width: 8,
//                       )),
//                 ),
//                 prefix:Text("+91"),
//
//                 labelStyle: const TextStyle(fontSize: 20),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide:  BorderSide(
//                     color: Colors.red.withOpacity(0.1),
//                   ),
//                 ),
//                 focusedBorder:  OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide(
//                     color: Colors.red.withOpacity(0.1),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
