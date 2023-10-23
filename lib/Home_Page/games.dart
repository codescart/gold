import 'package:flutter/material.dart';
class Game_page extends StatefulWidget {
  const Game_page({Key? key}) : super(key: key);

  @override
  State<Game_page> createState() => _Game_pageState();
}

class _Game_pageState extends State<Game_page> {

  TextEditingController textEditingController = TextEditingController();
  var velocityEditingController = TextEditingController();
  var finalValue = TextEditingController();

  int airFlow=0;
  //int velocity=0;
  int valueFinal=0;
  String sam=('g');
  //sam2=('k');
  String airFlowText=('ui'),
  //velocityText=('kii'),
      finalText=('ju');



  @override

  void initState() {
    super.initState();
    finalValue.addListener(() => setState(() {}));
  }

  String totalCalculated() {
    airFlowText = textEditingController.text;
    //velocityText = velocityEditingController.text;
    finalText = finalValue.text;

    if (airFlowText != '')
      //&& velocityText != '')
        {
      sam = (airFlow * 5000).toString();
      finalValue.value = finalValue.value.copyWith(
        text: sam.toString(),
      );
    }
    return sam;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 8.0,right: 8.0),
            child: InkWell(
              onTap: ()
              {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Color(0xff272239),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),

                        ),
                        scrollable: true,
                        content: Stack(
                          clipBehavior: Clip.none, children: <Widget>[
                          Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child:
                              CircleAvatar(
                                child: Icon(Icons.close,
                                  color:
                                  Color(0xffE10A0A),
                                ),
                                backgroundColor:
                                Color(0xffFFFFFF),
                                // Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(
                                8.0),
                            child: Form(
                              child: Column(
                                children: <Widget>[
                                  Text('Gold',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // height: MediaQuery.of(context).size.height/0.1,
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.indigo,
                                            width: 2,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child:
                                        Image.asset('assets/images/goldcointwo.png'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/10,
                                  ),
                                  Container(
                                    child: Text(
                                      "Enter Amount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 25),),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/20,
                                    //height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        alignment: Alignment.center,
                                        child: TextFormField(
                                          cursorColor: Colors.white,
                                          style:
                                          TextStyle(
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                          maxLength: 5,
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            counter: Spacer(),
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
                                    ],
                                  ),   //  enter amount
                                  TextFormField(
                                    // key: Key(totalCalculated()),
                                    controller: textEditingController,
                                    onChanged: (textEditingController) {
                                      setState(() {
                                        airFlow = int.parse(textEditingController.toString());
                                      });
                                    },
                                    onTap: () {
                                      setState(() {
                                        textEditingController.clear();
                                      });
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter Value',
                                      labelText: 'Air Flow',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ), //  enter amount
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text(
                                      "* You will win 5x",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12),
                                    ),
                                  ),  //  winning amount
                                  TextFormField(
                                    key: Key(totalCalculated()),
                                    controller: finalValue,
                                    onChanged: (value) {
                                      setState(() {
                                        finalValue.value = finalValue.value.copyWith(
                                          text: value.toString(),
                                        );
                                       }
                                      );
                                    },
                                    onTap: () {
                                      setState(() {
                                        finalValue.clear();
                                        finalValue.value = finalValue.value.copyWith(
                                          text: '',
                                        );
                                       }
                                      );
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter Value',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      labelText: 'Final Value',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),  //  winning amount
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: (){},
                                    child: Center(
                                      child: Container(
                                        // padding: const EdgeInsets.all(12.0),
                                        height: 50,
                                        width: 200,
                                        // width: double.infinity,
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
                                          child: Text('Pay',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ),
                                    ),
                                  ),  //  pay button
                                ],
                              ),
                            ),
                          ),
                         ],
                        ),
                      );
                    }
                    );
              },
              child:
              Padding(
                padding: const EdgeInsets.only(top: 5.0,right: 10.0,bottom: 5.0,left: 10.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 12.0,top: 12.0,right: 12.0,bottom: 12.0),
                  height: MediaQuery.of(context).size.height*0.10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width/10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.indigo,
                              width: 2,
                            ),
                            color: Colors.white,
                          ),
                          child:
                          Image.asset('assets/images/goldcointwo.png'),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Gold",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),),
                              Text("सोना",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ) ,
                            ]
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child:
                          Image.asset('assets/images/bar_graph_two.png'),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text("65",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
