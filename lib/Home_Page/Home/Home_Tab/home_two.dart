// import 'package:flutter/material.dart';      //page not in use
// import 'package:gold/Home_Page/Home/Home_Tab/Buy_Gold/buy_gold.dart';
// import 'package:gold/Home_Page/Home/Home_Tab/gold_list.dart';
// import 'package:gold/Home_Page/Home/Home_Tab/gold_rate.dart';
// import 'package:gold/Home_Page/games.dart';
// //import 'package:google_fonts/google_fonts.dart';
// //import 'package:gold/HomeTwo_Page/HomeTwo/HomeTwo_Tab/Buy_Gold/buy_gold.dart';
// //import 'package:gold/HomeTwo_Page/HomeTwo/HomeTwo_Tab/gold_list.dart';
// //import 'package:gold/HomeTwo_Page/HomeTwo/HomeTwo_Tab/gold_rate.dart';
//
// class HomeTwo extends StatefulWidget {
//   const HomeTwo({Key? key}) : super(key: key);
//
//   @override
//   State<HomeTwo> createState() => _HomeTwoState();
// }
//
// class _HomeTwoState extends State<HomeTwo> {
//   @override
//
//   Widget build(BuildContext context) {
//     final ButtonStyle style=ElevatedButton.styleFrom(
//         textStyle: const TextStyle(fontSize: 20)
//     );
//
//     final _goldColors = const [
//       Color(0xFFa2790d),
//       Color(0xFFebd197),
//       Color(0xFFa2790d),
//     ];
//     final _silverColors = const [
//       Color(0xFFAEB2B8),
//       Color(0xFFC7C9CB),
//       Colors.white,
//       // Color(0xFFD7D7D8),
//       Color(0xFFAEB2B8),
//     ];
//     final _purpleColors = const [
//       Color(0xFFa2790d),
//       Color(0xFFebd197),
//       Color(0xFFa2790d),
//     ];
//
//     return Scaffold(
//       backgroundColor: Color(0xff272239),
//         body:SingleChildScrollView(
//           child:
//           Column(
//             children: [
//               // Divider(
//               //   thickness: 1,color: Colors.white,
//               // ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height/60,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   RichText(text: TextSpan(
//                       text: '  Welcome',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                        color: Colors.white
//                       ),
//                       children: [
//                       ])),
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height/60,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height/80,
//               ),
//               InkWell(
//                 onTap: (){
//                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyGold()));
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8.0,right: 8.0),
//                   child: Container(
//                    // padding: const EdgeInsets.all(12.0),
//                     height: MediaQuery.of(context).size.height*0.15,
//                     width: MediaQuery.of(context).size.width*2,
//                     //  width: 100,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         color: Color(0xffFFFDD0),
//                     ),
//                     child:
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children:[
//                         Padding(
//                           padding: const EdgeInsets.only(left: 12.0),
//                           child: Container(
//                               height: MediaQuery.of(context).size.height*0.5,
//                               width: MediaQuery.of(context).size.width*0.15,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: Colors.indigo,
//                                   width: 2,
//                                 ),
//                                 color: Colors.white,
//                               ),
//                               child:
//                               Image.asset('assets/images/goldcointwo.png'),
//                             ),
//                         ),
//                       Text(
//                         "Winning Number",
//                         style: TextStyle(
//                           color: Color(0xFFb30000),
//                           fontSize: MediaQuery.of(context).size.width/18,
//                           //MediaQuery.of(context).size.height*0.12,
//                           fontWeight: FontWeight.bold,
//                         ),),
//                      Padding(
//                        padding: const EdgeInsets.only(top:6,bottom: 6,left: 6,right: 6),
//                        child: Container(
//                          height: MediaQuery.of(context).size.height/13,
//                          width: MediaQuery.of(context).size.width/5,
//                          decoration: BoxDecoration(
//                            gradient: LinearGradient(
//                              begin: Alignment.topLeft,
//                              end: Alignment.bottomRight,
//                              colors:  _goldColors ,
//                            ),
//                           borderRadius: BorderRadius.all(Radius.circular(12)),
//                          ),
//                             child: Center(
//                               child: Text("75",
//                                 style: TextStyle(
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),),
//                             ),
//                           ),
//                      ),
//                     ]
//                   ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height/35,
//               ),
//               Divider(
//                 thickness: 1,color: Colors.white,
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                   child: Game_page()),
//             ],
//           ),
//         ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
