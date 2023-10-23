import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gold/Home_Page/Home/home_one.dart';
import 'package:gold/Home_Page/Home/main_page_two.dart';
import 'package:gold/Home_Page/main_page.dart';
import 'package:gold/Login_Page/signup_page.dart';
import 'package:gold/NumberSelect/number_page.dart';
//import 'package:jar_app_demo/screens/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _isVisible=false;

  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff272239),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color: Colors.purple[900],
                height: deviceHeight*0.30,
                child: FittedBox(
                  child: CircleAvatar(
                    backgroundColor: Colors.purple[900],   //background color in gradient
                    backgroundImage: AssetImage(
                      'assets/images/goldapptwo.png',
                    ),
                    radius: 120,
                  ),
                ),

              ),
              Container(
                height: deviceHeight*0.65,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(builder: (ctx,constrains){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login Now',
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: constrains.maxHeight*0.01,),
                      Text('Please enter the details below to continue',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: constrains.maxHeight*0.08,
                      ),
                      //                       Container(
//                         height: constrains.maxHeight*0.12,
//                         decoration: BoxDecoration(
//                           color: Color(0xffB4B4B4).withOpacity(0.4),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 15),
//                           child: Center(
//                             child:
//                             TextField(
//                               controller: _text,
//                               decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 hintText: 'Mobile Number',
//                                   //prefix: Text('91 '),
//                                   prefix: Container(
//                                     height: 50,
//                                     width: 50,
//                                     color: Colors.yellowAccent,
//                                   ),
//
//                                  // Image.asset('assets/images/indianflag.png'),
//                                   errorText: _validate ? "Value Can't Be Empty" : null,
//                               ),
//                               keyboardType: TextInputType.phone,
//                               inputFormatters: <TextInputFormatter>[
//                                 // for below version 2 use this
//                                 FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
// // for version 2 and greater youcan also use this
//                                 FilteringTextInputFormatter.digitsOnly
//
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
                      TextFormField(
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        maxLength: 10,
                        decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: Colors.red.withOpacity(0.1),
                          hintText: "  Mobile number",
                          hintStyle: TextStyle(color: Colors.grey,
                              fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Proxima Nova"),
                          prefixIcon:  Padding(
                            padding: const EdgeInsets.only(top:6,bottom: 6,left: 6,right: 6),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset('assets/images/indianflag.png',fit: BoxFit.fill,
                                  height: 8,width: 8,
                                )),
                          ),
                          prefix:Text("+91 ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),

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
                      ),  //  indian flage
                      SizedBox(
                        height: constrains.maxHeight*0.02,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                          setState(() {
                            _text.text.isEmpty ? _validate = true : _validate = false;
                          });
                        },
                        child: Center(
                          child: Container(
                            // padding: const EdgeInsets.all(12.0),
                            height: 50,
                            width: double.infinity,
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
                            child:
                            Center(
                              child: Text('Verify',
                                // 'Invest \n'
                                //   'Now',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),),
                            ),
                          ),
                        ),
                      ),

                      // Container(
                      //
                      //   width: double.infinity,
                      //   height: constrains.maxHeight*0.12,
                      //   margin: EdgeInsets.only(
                      //     top: constrains.maxHeight*0.05,
                      //   ),
                      //   child:
                      //   ElevatedButton(
                      //     onPressed: (){
                      //       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                      //     },
                      //     child: Text(
                      //       'Varify',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 22
                      //       ),
                      //     ),
                      //     style: ElevatedButton.styleFrom(
                      //
                      //         // primary: Color(0xffF80849),
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(28)
                      //         )
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.02,
                      ),
                      RichText(text: TextSpan(
                          text: 'Don\'t have an Account!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          children: [
                            TextSpan(
                                text: '  Register',
                                style: TextStyle(
                                  color: Color(0xffF80849),
                                  fontSize: 18,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap=(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                                  }
                            )
                          ])),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height:50,
                                    width:50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 1.0, // has the effect of softening the shadow
                                          spreadRadius: 0.0, // has the effect of extending the shadow
                                          offset: Offset(
                                            1.0, // horizontal, move right 10
                                            1.0, // vertical, move down 10
                                          ),
                                        )
                                      ],
                                        // gradient: LinearGradient(
                                        //   begin: Alignment.topRight,
                                        //   end: Alignment.bottomLeft,
                                        //   colors: [
                                        //     Colors.deepPurple,
                                        //     Colors.indigo,
                                        //   ],
                                        // )
                                    ),
                                    child:
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        constraints: const BoxConstraints(
                                          maxWidth: 300,
                                          maxHeight: 100,
                                        ),
                                        //color: Colors.green,
                                        child: Image.asset('assets/images/android.gif',
                                          height: 40,
                                          width: 40,
                                        ),
                                        //const Text('ClipRRect', style: style),
                                      ),
                                    ),
                                    // Center(child: Text('fghgg'),
                                    // )
                                ),
                                Container(
                                    height:50,
                                    width:50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 1.0, // has the effect of softening the shadow
                                          spreadRadius: 0.0, // has the effect of extending the shadow
                                          offset: Offset(
                                            1.0, // horizontal, move right 10
                                            1.0, // vertical, move down 10
                                          ),
                                        )
                                      ],
                                    ),
                                    child:
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        constraints: const BoxConstraints(
                                          maxWidth: 300,
                                          maxHeight: 100,
                                        ),
                                        //color: Colors.green,
                                        child: Image.asset('assets/images/whatsapp.gif',
                                          height: 40,
                                          width: 40,
                                        ),
                                        //const Text('ClipRRect', style: style),
                                      ),
                                    ),
                                    // Center(child: Text('fghgg')
                                    // )
                                ),
                                Container(
                                  height:50,
                                width:50,
                                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(),
                  boxShadow: [
                  BoxShadow(
                  color: Colors.black,
                  blurRadius: 1.0, // has the effect of softening the shadow
                  spreadRadius: 0.0, // has the effect of extending the shadow
                  offset: Offset(
                  1.0, // horizontal, move right 10
                  1.0, // vertical, move down 10
                  ),
                  )
                  ],
                  ),
                  child:
                                 ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                        maxHeight: 100,
                      ),
                      //color: Colors.green,
                      child: Image.asset('assets/images/gmail.gif',
                      height: 40,
                        width: 40,
                      ),
                      //const Text('ClipRRect', style: style),
                    ),
                  ),
                  // Center(child: Text('fghgg')
                  // )
                  ),
                              ],
                            ),
                    ],
                  );
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
