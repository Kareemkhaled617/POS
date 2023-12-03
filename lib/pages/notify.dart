
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pos_2/apis/api.dart';
import 'package:pos_2/apis/expenses.dart';
import 'package:pos_2/helpers/icons.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../models/system.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> expenseCategories = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pushNamed(context, '/layout');
          },
          icon: Icon(IconBroken.Arrow___Right),
        ),
      ),
        body:
        SafeArea(
          child: SingleChildScrollView(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    color:
                    Color(0xffedecf2),
                    elevation: 1.0,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Lottie.asset('assets/lottie/bell.json'),
                          ),
                          SizedBox(
                            width: 150,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Notification Header',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color:
                                           Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "header",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                                  ),
                                ]),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    child: Row(
                                      children: [
                                        Text(
                                         "body",
                                          style: TextStyle(
                                              color: Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },

              itemCount: 10,
            ),
          ),
        ));
  }
}
