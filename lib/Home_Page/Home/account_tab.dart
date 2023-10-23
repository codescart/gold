import 'package:flutter/material.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272239),
      body: Container(
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
                      Tab(text: 'Profile'),
                      Tab(text: 'Settings'),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height*0.71,
                   // height: 600,
                    width: 500,//height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.black, width: 0.5))
                    ),
                    child: TabBarView(children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                               // color: Colors.orange,
                                height: 80,
                                width: 400,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 5,color: Colors.grey),
                                  color: Colors.purple[900],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/goldapptwo.png'),
                                  ),
                                ),
                                //child: Text('UN'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                              //width: ,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    child: Text('Name',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 120,
                                    child: Text('User name',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    child: Text('Phone',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 120,
                                    child: Text('+91xxxxxxxxxx',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            ),  //Name
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    child: Text('Age',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 120,
                                    child: Text('28',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            ),  //Age
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    child: Text('Gender',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 120,
                                    child: Text('Male',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            ),  //Gender
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    child: Text('Email',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 120,
                                    child: Text('email@gmail.com',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),  //  email
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),

                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              //color: Colors.purple[800],
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
                               // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('PAYMENT SETTINGS', style: TextStyle(fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.white )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    //width: ,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.wallet,
                                        color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Payment Methods',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                        // child: Text('User name',
                                        //   style: TextStyle(
                                        //     color: Colors.white,
                                        //   ),),
                                      ),
                                    ],
                                  ),  // payment mode
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.stacked_line_chart,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Daily Savings',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 80,
                                        child: Text('Setup Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                        // child: Text('User name',
                                        //   style: TextStyle(
                                        //     color: Colors.white,
                                        //   ),),
                                      ),
                                    ],
                                  ),  //  daily savings
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.monetization_on,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Round Off',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 80,
                                        child: Text('Disabled',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                        // child: Text('User name',
                                        //   style: TextStyle(
                                        //     color: Colors.white,
                                        //   ),),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.calendar_month_outlined,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Saving Plan',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 80,
                                        child: Text('Setup Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              //color: Colors.purple[800],
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
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('APP SETTINGS', style: TextStyle(fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.white )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    //width: ,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.notifications_none,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Notification Settings',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                      ),
                                    ],
                                  ),  // payment mode
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.language,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Language',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 80,
                                        child: Text('English',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                        // child: Text('User name',
                                        //   style: TextStyle(
                                        //     color: Colors.white,
                                        //   ),),
                                      ),
                                    ],
                                  ),  //  daily savings

                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              //color: Colors.purple[800],
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
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('PRIVACY AND PERMISSIONS', style: TextStyle(fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.white )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    //width: ,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.lock_outline,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Gold Security Shield',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 80,
                                        child: Text('Off',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                        // child: Text('User name',
                                        //   style: TextStyle(
                                        //     color: Colors.white,
                                        //   ),),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.folder_copy_outlined,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Terms and Conditions',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                      ),
                                    ],
                                  ),  // payment mode
                                  Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                  //  daily savings
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Icon(Icons.shield_outlined,
                                          color: Colors.white,),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text('Privacy Policy',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 40,
                                        child: IconButton(
                                          iconSize: 15,
                                          icon: const Icon(Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                          onPressed: (){},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])
                )
              ])
          ),
        ]),
      ),
      // appBar: AppBar(),
    );
  }
}
