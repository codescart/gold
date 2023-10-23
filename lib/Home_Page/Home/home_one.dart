// import 'package:flutter/material.dart';
// //import 'package:gold/HomeOne_Page/HomeOne/HomeOne_Tab/Buy_Gold/buy_gold.dart';
// //import 'package:gold/HomeOne_Page/HomeOne/HomeOne_Tab/gold_list.dart';
// //import 'package:gold/HomeOne_Page/HomeOne/HomeOne_Tab/gold_rate.dart';
// import 'package:gold/Home_Page/Home/Home_Tab/Buy_Gold/buy_gold.dart';
// import 'package:gold/Home_Page/Home/Home_Tab/gold_list.dart';
// import 'package:gold/Home_Page/Home/Home_Tab/gold_rate.dart';
//
// class HomeOne extends StatefulWidget {
//   const HomeOne({Key? key}) : super(key: key);
//
//   @override
//   State<HomeOne> createState() => _HomeOneState();
// }
//
// class _HomeOneState extends State<HomeOne> {
//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style=ElevatedButton.styleFrom(
//         textStyle: const TextStyle(fontSize: 20)
//     );
//     return Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//            // Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyDigitalGold()));
//             // Add your onPressed code here!
//           },
//           // label: const Text('Approve'),
//           // icon: const Icon(Icons.thumb_up),
//
//           // backgroundColor: Colors.pink,
//
//           child: Container(
//
//             height: 50,
//             width: 100,
//             child: Row(
//               children: [
//                 Icon(Icons.lock,size: 13,),SizedBox(width: 3,),
//                 Text("Buy \nGold",style: TextStyle(fontSize: 10),),
//               ],
//             ),
//           ),
//           // backgroundColor: Colors.green,
//           // child: Image.asset("assets/images/calendar_new.jpg")
//         ),
//         backgroundColor: Colors.purple[900],
//         body:SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Container(
//                   // decoration: const BoxDecoration(
//                   //   color: Colors.deepPurpleAccent,
//                   //   borderRadius: BorderRadius.all(Radius.circular(8)),
//                   // ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         Container(
//
//                           child: Text('Welcome Mr.Ram',
//                             style: TextStyle(fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ), //Welcome Mr.Ram
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyGold()));
//                 },
//                 child: Container(
//                   height: 100,
//                   width: 300,
//                   child: GoldRate(),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Divider(
//                   thickness: 2,
//                   color: Colors.black,
//                 ),
//               ),
//               Container(
//                 height: 100,
//                 width: 300,
//                 child: GoldList(),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               // ListView(
//               //   children: [
//               //     Container(
//               //       height: 100,
//               //       width: 300,
//               //       child: GoldList(),
//               //     ),
//               //   ],
//               // ),
//
//
//             ],
//           ),
//         )
//
//
//     );
//   }
// }