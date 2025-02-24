import 'package:flutter/material.dart';

class Recherche extends StatelessWidget {
  const Recherche({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(
                padding: EdgeInsets.only(left: 5),
                height: 50,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 3)
                  )
                ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Recharcher',
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none
                  ),
                ),
              )),
              SizedBox(width: 10,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(0, 4)
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25)
                    ),
                ),
                child: ElevatedButton(
                  onPressed:(){},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                  ), 
                  child: Icon(
                    Icons.search
                  ),
                  ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Choisir une date"),
                  Text("12 Dec - 22 Dec")
                ],),
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Column(children: [
                  Text("Choisir une date"),
                  Text("12 Dec - 22 Dec")
                ],),
              )
            ],
          )
        ],
      ),
    );
  }
}