import 'package:flutter/material.dart';
import 'package:gold/Home_Page/main_page.dart';



class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff272239),
        title: Text('OTP Page'),
        elevation: 0,
      ),
      backgroundColor: Color(0xff272239),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   height:
          //   50,
          //   width: 300,
          //   //constrains.maxHeight*0.12,
          //   decoration: BoxDecoration(
          //     color: Color(0xffB4B4B4).withOpacity(0.4),
          //     borderRadius: BorderRadius.circular(16),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 15),
          //     child: Center(
          //       child:
          //       TextField(
          //         cursorColor: Colors.white,
          //         decoration: InputDecoration(
          //           border: InputBorder.none,
          //           hintText: 'Enter OTP',
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              cursorColor: Colors.white,
              keyboardType: TextInputType.number,
              style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
              // maxLength: 10,
              decoration: InputDecoration(
                counterText: "",
                filled: true,
                fillColor: Colors.red.withOpacity(0.1),
                hintText: "         Name",
                hintStyle: TextStyle(color: Colors.grey,
                    fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Proxima Nova"),
                prefixIcon:  Padding(
                  padding: const EdgeInsets.only(top:5,bottom: 5,left: 5,right: 5),
                  // child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(5),
                  //     child: Image.asset('assets/images/indianflag.png',fit: BoxFit.fill,
                  //       height: 10,width: 10,
                  //     )),
                ),
                // prefix:Text("+91"),

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
          ),
          // SizedBox(
          //   height: 40,
          // ),
          Center(
            child:
            Container(
              // padding: const EdgeInsets.all(12.0),
              height: 50,
              width: 300,
              //double.infinity,
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
                child: Text('Varify',
                  // 'Invest \n'
                  //   'Now',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),),
              ),
            ),
            // Container(
            //
            //   child: ElevatedButton(
            //     onPressed: (){
            //       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            //     },
            //     child: Text(
            //       'Enter OTP',
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 22
            //       ),
            //     ),
            //     style: ElevatedButton.styleFrom(
            //         primary: Color(0xffF80849),
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(28)
            //         )
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
