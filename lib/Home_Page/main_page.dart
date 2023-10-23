import 'package:flutter/material.dart';
import 'package:gold/Home_Page/Home/Home_Tab/home_two.dart';
import 'package:gold/Home_Page/Home/account_tab.dart';
import 'package:gold/Home_Page/Home/home_one.dart';
import 'package:gold/Home_Page/Home/transaction_tab.dart';
import 'package:gold/Home_Page/Home_page.dart';
import 'package:gold/Notification_Page/notification_screen.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home_page(),
    TransactionTab(),
    AccountTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272239),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff272239),

        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>NotificationScreen()));
          },
              icon: Icon(Icons.notifications)),
        ],
        title: Center(child: Text('12X Bull',
        style: TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        )
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/goldapptwo.png',
          height: MediaQuery.of(context).size.height/80,
            width: 60,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
      Container(
        height: MediaQuery.of(context).size.height/10,
        width:
        MediaQuery.of(context).size.width/50,
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined),
                label: 'Transactions',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account',
              ),
            ],
            currentIndex: _selectedIndex,
            backgroundColor: Color(0xff272239),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[600],
            onTap: _onItemTapped,
          ),
        ),
      ),
      drawer:
      Container(
        width: MediaQuery.of(context).size.width/1.5,
        child: Drawer(
          backgroundColor: Colors.purple[900],
          child:
          Container(
            decoration: BoxDecoration(
              // color: Color(0xff2d2942),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff241335),
                  Color(0xffa340f5),
                  //Color(0xff2d2942),
                 // Colors.deepPurple,
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                  //width: ,
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4,
                      color: Color(0xffcea68d),
                      //color: Colors.grey
                    ),
                    color: Colors.purple[900],
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/images/goldapptwo.png',
                    height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                  //width: ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Anil Kumar',
                    style: TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                  //width: ,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child:
                          // Icon(Icons.terminal_sharp,
                          //   color: Colors.white,
                          // ),
                            Icon(Icons.home,
                            color: Colors.white,
                            ),
                        // Text('Name',
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //   ),),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/30,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text('Home ',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Divider(
                //     thickness: 2,
                //     color: Colors.grey,
                //   ),
                // ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: Icon(Icons.person,
                        color: Colors.white,
                        ),
                        // Text('Phone',
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //   ),),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/30,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text('Profile',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  ),
                ),
                //Name
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Divider(
                //     thickness: 2,
                //     color: Colors.grey,
                //   ),
                // ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child:
                        Icon(Icons.terminal_sharp,
                          color: Colors.white,
                        ),
                        // Icon(Icons.home,
                        // color: Colors.white,
                        // ),
                        // Text('Name',
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //   ),),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/30,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text('Terms&Conditions ',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                    ],
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
                        child:
                        Icon(Icons.privacy_tip_outlined,
                          color: Colors.white,
                        ),
                        // Icon(Icons.home,
                        // color: Colors.white,
                        // ),
                        // Text('Name',
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //   ),),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/30,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text('Privacy Policy ',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                    ],
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
                        child: Icon(Icons.settings,
                        color: Colors.white,
                        ),
                        // Text('Age',
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //   ),),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/30,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text('Settings',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  ),
                ),
                //Age
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Divider(
                //     thickness: 2,
                //     color: Colors.grey,
                //   ),
                // ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child:
                          Icon(Icons.logout,
                          color: Colors.white,
                          ),
                        // Text('Gender',
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //   ),),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/30,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text('Log Out',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //Gender
              ],
            ),
          ),
        ),
      ),
    );
  }
}
