//import 'package:bottom_navg_bar_new/Transactions/Spin%20to%20win.dart';
//import 'package:bottom_navg_bar_new/Transactions/invest_now.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gold/Home_Page/Home/Add_Cash/add_cash.dart';
import 'package:gold/Home_Page/Home/withdraw_cash/withdraw_money.dart';
//import 'package:12xBull/Home_Page/Home/Add_Cash/add_cash.dart';

class TransactionTab extends StatefulWidget {
  const TransactionTab({Key? key}) : super(key: key);

  @override
  State<TransactionTab> createState() => _TransactionTabState();
}

class _TransactionTabState extends State<TransactionTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272239),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.78,
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[

                DefaultTabController(
                    length: 2, // length of tabs
                    initialIndex: 0,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.grey,
                          tabs: [
                            Tab(text: 'History'),
                            // Tab(text: 'History2'),
                            Tab(text: 'Add Money'),
                          ],
                        ),
                      ),
                      Container(
                         // height: 200, //height of TabBarView
                          height: MediaQuery.of(context).size.height*0.68,
                          decoration: BoxDecoration(
                              border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                          ),
                          child: TabBarView(children: <Widget>[
                            SingleChildScrollView(
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.78,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 20,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 8.0,right: 8.0),
                                        child:
                                        InkWell(
                                          onTap: ()
                                          {
                                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyGold()));
                                          },
                                          child:
                                          Container(
                                            padding: const EdgeInsets.all(12.0),

                                            height: 80,
                                            //  width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(8)),
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xff2d2942),
                                                  Colors.deepPurple,
                                                ],
                                              ),
                                            ),
                                            child:
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children:[
                                                  Container(
                                                    height: MediaQuery.of(context).size.height/2,
                                                    width: MediaQuery.of(context).size.width/6,
                                                    child:
                                                    //Image.asset('assets/images/12xBullcointwo.png'),
                                                    Center(child:
                                                    //Icon(Icons.dataset_linked_outlined)),
                                                    Text('\u{20B9}${20}',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25
                                                      ),
                                                    )),
                                                  ),
                                                  Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          "12xBull",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400,
                                                          ),),
                                                        Text("Bet Date 2022-09-29",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 14,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ) ,
                                                        Text("Bet Time 02:33:41",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 14,
                                                            //fontWeight: FontWeight.bold,
                                                          ),
                                                        ) ,
                                                      ]
                                                  ),
                                                  Center(
                                                    child: Text("00",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                      ),),
                                                  ),
                                                ]
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                ),
                              ),  //  historyNew
                            ),
                            SingleChildScrollView(
                              child: Container(
                                // height: mi,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Center(
                                        child:
                                        Container(
                                          height: 200,
                                          width: 310,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Color(0xff2d2942),
                                                Colors.deepPurple,
                                              ],
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                            //color: Colors.pinkAccent,
                                          ),
                                          child:
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("My Money",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w300,
                                                ),),
                                              Text("\u{20B9}0",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 40,
                                                ),
                                              ),
                                              Container(
                                                height: 30,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  color: Colors.green,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child: Center(child: Text("100% Safe & Secure")),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(25.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 120,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Color(0xff2d2942),
                                                    Colors.deepPurple,
                                                  ],
                                                ),
                                                //color: Colors.black12,
                                              ),
                                              child:
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Deposit",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w300,
                                                    ),),
                                                  Text("\u{20B9}0",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 30,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 120,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Color(0xff2d2942),
                                                    Colors.deepPurple,
                                                  ],
                                                ),
                                                //color: Colors.black12,
                                              ),
                                              child:
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Bonus",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w300,
                                                    ),),
                                                  Text("\u{20B9}",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 30,
                                                    ),),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCash()));
                                              },
                                              child:
                                              Container(
                                                height: 40,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topCenter,
                                                      end: Alignment.bottomCenter,
                                                      colors: [

                                                        Colors.deepPurple,
                                                        Colors.blue,
                                                      ],
                                                    )
                                                  // shape: BoxShape.rectangle,
                                                  // border: Border.all(
                                                  //   color: Colors.black,
                                                  //   width: 2,
                                                  // ),
                                                  // borderRadius: BorderRadius.all(Radius.circular(40)),
                                                  // color: Colors.blue[900],
                                                ),
                                                child: Center(child: Text("ADD CASH",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )),
                                              ),  //ADD Cash
                                            ),
                                            Spacer(),
                                            InkWell(
                                              onTap: (){
                                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawCash()));
                                              },
                                              child:
                                              Container(
                                                height: 40,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topCenter,
                                                      end: Alignment.bottomCenter,
                                                      colors: [
                                                        Colors.deepPurple,
                                                        Colors.blue,
                                                      ],
                                                    )
                                                  // shape: BoxShape.rectangle,
                                                  // border: Border.all(
                                                  //   color: Colors.black,
                                                  //   width: 2,
                                                  // ),
                                                  // borderRadius: BorderRadius.all(Radius.circular(40)),
                                                  // color: Colors.blue[900],
                                                ),
                                                child: Center(child: Text("WITHDRAW CASH",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),)),
                                              ),
                                            ),
                                          ],
                                        ),  //add cash
                                      ),
                                    ],
                                  ),
                                ),
                              ),  //  add money
                            ),
                          ])
                      )
                    ])
                  ),
               ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
