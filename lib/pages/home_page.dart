import 'dart:ui';

import 'package:fashion_app/pages/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/09/20/12/12/girl-2768343_960_720.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 50,
            child: InkWell(onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> DetailPage()
              ));
            },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade500.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20)),
                height: 80,
                width: 290,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,10,15,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Evening Dress',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text('Woman printed maxi skirt',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.grey[600],
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
