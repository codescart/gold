// import 'package:flutter/material.dart';
// import 'package:gold/Login_Page/login_page.dart';
// //import 'package:login_two_y/Live%20Games/lead.dart';
//
// class BuyGold extends StatefulWidget {
//   const BuyGold({Key? key}) : super(key: key);
//
//   @override
//   State<BuyGold> createState() => _BuyGoldState();
// }
//
// class _BuyGoldState extends State<BuyGold> {
//
//   List<String> images = [
//     '00','01','02','03','04','05','06','07','08','09','10',
//     '11','12','13','14','15','16','17','18','19','20','21',
//     '22','23','24','25','26','27','28','29','30',
//     '31','32', '33','34','35','36','37','38','39','40',
//     '41','42', '43','44','45','46','47','48','49','50',
//     '51','52', '53','54','55','56','57','58','59','60',
//     '61','62', '63','64','65','66','67','68','69','70',
//     '71','72', '73','74','75','76','77','78','79','80',
//     '81','82', '83','84','85','86','87','88','89','90',
//     '91','92', '93','94','95','96','97','98','99',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff272239),
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Gold"),
//         backgroundColor: Color(0xff272239),
//       ),
//       body:
//       ListView(
//         children: [
//           Column(
//             children: [
//               Container(
//                   height: MediaQuery.of(context).size.height*0.88,
//                   //height: ,
//                   width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.fromLTRB(0,2,0,0),
//                   child: GridView.builder(
//                     itemCount: 100,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 5,
//                       crossAxisSpacing: 20.0,
//                       mainAxisSpacing: 20.0,
//                     ),
//                     itemBuilder: (BuildContext context, int index){
//                       return
//                         InkWell(
//                         onTap: (){
//
//                           showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return AlertDialog(
//                                   backgroundColor: Color(0xff272239),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(15.0),
//
//                                 ),
//                                   scrollable: true,
//                                   content: Padding(
//                                     padding: const EdgeInsets.all(
//                                         8.0),
//                                     child: Form(
//                                       child: Column(
//                                         children: <Widget>[
//                                           // SizedBox(height: 50,),
//                                           Container(
//                                             padding: EdgeInsets
//                                                 .only(left: 60),
//                                             child: Row(
//                                               children: [
//                                                 Container(
//                                                   height: 70,
//                                                   width: 70,
//                                                   //color: Colors.pinkAccent,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius: BorderRadius.circular(12),
//                                                     gradient: LinearGradient(
//                                                       begin: Alignment.centerLeft,
//                                                       end: Alignment.centerRight,
//                                                       colors: [
//                                                         Color(0xff2d2942),
//                                                         Colors.deepPurple,
//                                                       ],
//                                                     ),
//                                                   ),
//                                                   //
//                                                   child: Center(
//                                                       child: Text(
//                                                         images[index],
//                                                         style: TextStyle(
//                                                             color: Colors.white,
//                                                             fontSize: 26),)),
//                                                 ),
//                                                 SizedBox(
//                                                   width: 38,),
//                                                 Container(
//                                                     padding: EdgeInsets
//                                                         .only(
//                                                         bottom: 40),
//                                                     child: IconButton(
//                                                       onPressed: () {
//                                                         Navigator
//                                                             .of(
//                                                             context)
//                                                             .pop();
//                                                       },
//                                                       icon: Icon(
//                                                           Icons
//                                                               .close,
//                                                       color: Colors.grey,
//                                                       ),
//                                                     )
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                           // SizedBox(height: 50,),
//                                           Container(
//                                             child: Text(
//                                               "Betting price on selected number",
//                                               style: TextStyle(
//                                                 color: Colors.grey,
//                                                   fontSize: 12),),
//                                           ),
//                                           SizedBox(height: 15,),
//                                           TextFormField(
//                                             cursorColor: Colors.white,
//                                             keyboardType: TextInputType.number,
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 18),
//                                             maxLength: 10,
//                                             decoration: InputDecoration(
//                                               counterText: "",
//                                               filled: true,
//                                               fillColor: Colors.red.withOpacity(0.1),
//                                               hintText: "Amount",
//                                               hintStyle: TextStyle(color: Colors.grey,
//                                                   fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Proxima Nova"),
//                                               prefixIcon: Icon(
//                                                 Icons
//                                                     .currency_rupee_outlined,
//                                                 size: 16,
//                                                 color:
//                                                 Colors.white,
//                                                 // Color(
//                                                 //     0xff03062a),
//                                               ),
//                                               labelStyle: const TextStyle(fontSize: 20),
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(10),
//                                                 borderSide:  BorderSide(
//                                                   color: Colors.white,
//                                                 ),
//                                               ),
//                                               focusedBorder:  OutlineInputBorder(
//                                                 borderRadius: BorderRadius.circular(10),
//                                                 borderSide: BorderSide(
//                                                   color: Colors.red.withOpacity(0.1),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//
//                                           SizedBox(height: 15,),
//                                           Container(
//                                             child: Text(
//                                               "*Jodi price bellow ₹ 5000",
//                                               style: TextStyle(
//                                                 color: Colors.grey,
//                                                   fontSize: 12),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             height: 15,
//                                           ),
//                                           InkWell(
//                                             onTap: (){
//                                               // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
//                                               // setState(() {
//                                               //   _text.text.isEmpty ? _validate = true : _validate = false;
//                                               // });
//                                             },
//                                             child: Center(
//                                               child: Container(
//                                                 // padding: const EdgeInsets.all(12.0),
//                                                 height: 50,
//                                                 width: 200,
//                                                 // width: double.infinity,
//                                                 decoration: BoxDecoration(
//                                                     borderRadius: BorderRadius.all(Radius.circular(40)),
//                                                     gradient: LinearGradient(
//                                                       begin: Alignment.topCenter,
//                                                       end: Alignment.bottomCenter,
//                                                       colors: [
//                                                         Colors.deepPurple,
//                                                         Colors.blue,
//                                                       ],
//                                                     )
//                                                 ),
//                                                 child:
//                                                 Center(
//                                                   child: Text('Done',
//                                                     // 'Invest \n'
//                                                     //   'Now',
//                                                     style: TextStyle(
//                                                       fontWeight: FontWeight.w500,
//                                                       fontSize: 20,
//                                                       color: Colors.white,
//                                                     ),),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//
//                                   // actions: [
//                                   //   InkWell(
//                                   //     onTap: (){
//                                   //      // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
//                                   //       // setState(() {
//                                   //       //   _text.text.isEmpty ? _validate = true : _validate = false;
//                                   //       // });
//                                   //     },
//                                   //     child: Center(
//                                   //       child: Container(
//                                   //         // padding: const EdgeInsets.all(12.0),
//                                   //         height: 50,
//                                   //        width: 200,
//                                   //        // width: double.infinity,
//                                   //         decoration: BoxDecoration(
//                                   //             borderRadius: BorderRadius.all(Radius.circular(40)),
//                                   //             gradient: LinearGradient(
//                                   //               begin: Alignment.topCenter,
//                                   //               end: Alignment.bottomCenter,
//                                   //               colors: [
//                                   //                 Colors.deepPurple,
//                                   //                 Colors.blue,
//                                   //               ],
//                                   //             )
//                                   //         ),
//                                   //         child:
//                                   //         Center(
//                                   //           child: Text('Done',
//                                   //             // 'Invest \n'
//                                   //             //   'Now',
//                                   //             style: TextStyle(
//                                   //               fontWeight: FontWeight.w500,
//                                   //               fontSize: 20,
//                                   //               color: Colors.white,
//                                   //             ),),
//                                   //         ),
//                                   //       ),
//                                   //     ),
//                                   //   ),
//                                   //   // Center(
//                                   //   //   child: ButtonTheme(
//                                   //   //     height: 40,
//                                   //   //     minWidth: 250,
//                                   //   //     child: ElevatedButton(
//                                   //   //       //color: Colors.grey,
//                                   //   //       // AppConstant
//                                   //   //       //     .primaryColor,
//                                   //   //       onPressed: () {  },
//                                   //   //       child: Text("Bet Now", style: TextStyle(color: Colors.lightGreenAccent
//                                   //   //
//                                   //   //         //AppConstant.backgroundColor
//                                   //   //       ),),
//                                   //   //
//                                   //   //       //   jodi(num,
//                                   //   //       //       amoount.text);
//                                   //   //       // },
//                                   //   //       // shape: RoundedRectangleBorder(
//                                   //   //       //     borderRadius: BorderRadius
//                                   //   //       //         .circular(
//                                   //   //       //         10.0)),
//                                   //   //     ),
//                                   //   //   ),
//                                   //   // )
//                                   // ],
//                                 );
//                               });
//                         },
//                          child: Container(
//                             decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.centerLeft,
//                                   end: Alignment.centerRight,
//                                   colors: [
//                                     Color(0xff2d2942),
//                                     Colors.deepPurple,
//                                   ],
//                                 ),
//                               borderRadius: BorderRadius.circular(12),
//                               border: Border.all(),
//                             ),
//                             child:
//                             Center(child: Text(images[index],
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),),
//
//                             )
//                         ),
//                       );
//                     },
//                   )
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
