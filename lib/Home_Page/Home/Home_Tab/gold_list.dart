import 'package:flutter/material.dart';

class GoldList extends StatefulWidget {
  const GoldList({Key? key}) : super(key: key);

  @override
  State<GoldList> createState() => _GoldListState();
}

class _GoldListState extends State<GoldList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurple,
              Colors.indigo,
            ],
          )
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.indigo,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Center(child:

               Icon(Icons.dataset_linked_outlined)),
              //Text("hjko")),
            ),
          ),
          Spacer(),  //
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("\n "
                    "\n"
                    "Gold",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Text("सोना",
                style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ), //  Today's winner Number
          Spacer(),
          Container(
            height: 30,
            width: 40,
            //
            decoration: BoxDecoration(
              // color: Colors.indigo[900],
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(30),
              //   bottomLeft: Radius.circular(30),
              // ),
            ),
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("\u{20B9}${2200}",
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
          ),
        ],
      ),

    );
  }
}
