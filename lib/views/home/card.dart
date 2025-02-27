import 'package:flutter/material.dart';
//import 'package:gestionhoter/views/home/home_page.dart';

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Listes des Chambre", style: TextStyle(
              fontWeight: FontWeight.w100, fontSize: 20.0
            ),),
          ),
          SizedBox(height: 20.0,),
          Container(
            height: 220,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: null,
              itemBuilder: (BuildContext context, index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10,
                    )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          
                        ),
                      )
                    ],
                  ),
                );
              }
              ),
          )
        ],
      ),
    );
  }
}
