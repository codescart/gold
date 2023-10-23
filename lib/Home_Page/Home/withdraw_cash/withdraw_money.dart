import 'package:flutter/material.dart';
import 'package:gold/Home_Page/Home/Add_Cash/add_cash.dart';



class WithdrawCash extends StatelessWidget {
  const WithdrawCash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272239),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff272239),
        title: Text('Withdraw Cash', ),
      ),
      body: SingleChildScrollView(
        child: Container(

          decoration: BoxDecoration(
            // color: Color(0xff2d2942),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff2d2942),
                Colors.deepPurple,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  // width: width,
                  // height: 120.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff2d2942),
                        Colors.deepPurple,
                      ],
                    ),
                    //color:  Color(0xff272239),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Enter Amount',
                            style:
                            Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.white,
                              fontSize: 30,
                              //fontWeight:
                              //Color(0xff272239),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: 200,
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff272239),
                                  ),
                                ),
                                hintText: "00",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              //controller: amoount,
                            ),
                          ),
                          SizedBox( height: 20,),
                          Container(
                            height: 30,width: 200,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(child: Text("100% safe & Secure")),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Center(child: Text("PAY USING",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
                ),
              ),
              SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Enter UPI Id',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20,
                   ),
                   ),
                   SizedBox(
                     height: 5,
                   ),
                   // TextFormField(),
                   TextFormField(
                     cursorColor: Colors.black,
                     keyboardType: TextInputType.name,
                     style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                     maxLength: 10,
                     decoration: InputDecoration(
                       counterText: "",
                       filled: true,
                       fillColor: Colors.white,
                       //Colors.red.withOpacity(0.1),
                       hintText: "  Enter Your UPI Number",
                       hintStyle: TextStyle(color: Colors.grey,
                           fontSize: 18,
                           //fontWeight: FontWeight.bold,
                           fontFamily: "Proxima Nova"),
                         //fontFamily: "Dancing Script"),
                       prefixIcon:  Padding(
                         padding: const EdgeInsets.only(top:6,bottom: 6,left: 6,right: 6),
                         child: Icon(Icons.note_alt_outlined,
                           color: Colors.black,
                         ),
                         // child: ClipRRect(
                         //     borderRadius: BorderRadius.circular(5),
                         //     child:
                         //      //Icon(Icons.note_alt_outlined),
                         //     Image.asset('assets/images/indianflag.png',fit: BoxFit.fill,
                         //        height: 8,width: 8,
                         //      )),
                       ),
                       // prefix:Text("+91 ",
                       //   style: TextStyle(
                       //     color: Colors.white,
                       //   ),
                       // ),

                       labelStyle: const TextStyle(fontSize: 20),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide:  BorderSide(
                           color: Colors.red.withOpacity(0.1),
                         ),
                       ),
                       focusedBorder:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                           color: Colors.red.withOpacity(0.1),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Text('Enter Account Holder Name',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20,
                     //fontWeight: FontWeight.bold,
                   ),
                   ),
                   SizedBox(
                     height: 5,
                   ),
                   TextFormField(
                     cursorColor: Colors.black,
                     keyboardType: TextInputType.name,
                     style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                     maxLength: 10,
                     decoration: InputDecoration(
                       counterText: "",
                       filled: true,
                       fillColor:
                       Colors.white,
                       //Colors.red.withOpacity(0.1),
                       hintText: "  Enter Account Holder Name",
                       hintStyle: TextStyle(color: Colors.grey,
                           fontSize: 18,
                           //fontWeight: FontWeight.bold,
                           fontFamily: "Proxima Nova"),
                       prefixIcon:  Padding(
                         padding: const EdgeInsets.only(top:6,bottom: 6,left: 6,right: 6),
                         child: Icon(Icons.note_alt_outlined,
                           color: Colors.black,
                         ),
                         // child: ClipRRect(
                         //     borderRadius: BorderRadius.circular(5),
                         //     child:
                         //      //Icon(Icons.note_alt_outlined),
                         //     Image.asset('assets/images/indianflag.png',fit: BoxFit.fill,
                         //        height: 8,width: 8,
                         //      )),
                       ),
                       // prefix:Text("+91 ",
                       //   style: TextStyle(
                       //     color: Colors.white,
                       //   ),
                       // ),

                       labelStyle: const TextStyle(fontSize: 20),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide:  BorderSide(
                           color: Colors.red.withOpacity(0.1),
                         ),
                       ),
                       focusedBorder:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                           color: Colors.red.withOpacity(0.1),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 35,
                   ),
                   Row(
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
                               fontSize: 20,
                             ),
                           )),
                         ),  //ADD Cash
                       ),
                       Spacer(),
                       InkWell(
                         onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawCash()));
                           var snackBar = SnackBar(content: Text('History not found'));
                           // Step 3
                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                           child: Center(child: Text("HISTORY",
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                             ),)),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 35,
                   ),
                   InkWell(
                     onTap: (){
                       var snackBar = SnackBar(content: Text('WhatApp not added'));
                       // Step 3
                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCash()));
                     },
                     child:
                     Container(
                       height: MediaQuery.of(context).size.height/20,
                       //height: 40,
                       width: MediaQuery.of(context).size.width/1,
                       //width: 150,
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
                       ),
                       child: Center(child: Text("Withdraw cash via whatsapp",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                       )),
                     ),  //ADD Cash
                   ),
                   SizedBox(
                     height: 20,
                   ),
                 ],
               ),
             ),
              // Expanded(
              //   child: displayUpiApps(),
              // ),
              // Expanded(
              //   child: FutureBuilder(
              //     future: _transaction,
              //     builder: (BuildContext context, AsyncSnapshot<UpiResponse> snapshot) {
              //       if (snapshot.connectionState == ConnectionState.done) {
              //         if (snapshot.hasError) {
              //           return Center(
              //             child: Text(
              //               _upiErrorHandler(snapshot.error.runtimeType),
              //               style: header,
              //             ), // Print's text message on screen
              //           );
              //         }
              //
              //         // If we have data then definitely we will have UpiResponse.
              //         // It cannot be null
              //         UpiResponse _upiResponse = snapshot.data!;
              //
              //         // Data in UpiResponse can be null. Check before printing
              //         String txnId = _upiResponse.transactionId ?? 'N/A';
              //         String resCode = _upiResponse.responseCode ?? 'N/A';
              //         String txnRef = _upiResponse.transactionRefId ?? 'N/A';
              //         String status = _upiResponse.status ?? 'N/A';
              //         String approvalRef = _upiResponse.approvalRefNo ?? 'N/A';
              //         _checkTxnStatus(status);
              //
              //         return Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: <Widget>[
              //               displayTransactionData('Transaction Id', txnId),
              //               displayTransactionData('Response Code', resCode),
              //               displayTransactionData('Reference Id', txnRef),
              //               displayTransactionData('Status', status.toUpperCase()),
              //               displayTransactionData('Approval No', approvalRef),
              //             ],
              //           ),
              //         );
              //       } else
              //         return Center(
              //           child: Text(''),
              //         );
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
