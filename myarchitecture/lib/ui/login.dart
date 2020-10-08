import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myarchitecture/models/subscriber.dart';
import 'package:myarchitecture/resources/subscriber/subscriber_repository.dart';


class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _repository = SubscriberRepository();

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller1,
                decoration: InputDecoration(hintText: 'Enter Name'),
              ),
              TextField(
                controller: _controller2,
                decoration: InputDecoration(hintText: 'Enter Password'),
              ),

              RaisedButton(
                child: Text('Create Data'),
                onPressed: () {
                  setState(() {
                    _repository.loginUser(_controller1.text,_controller2.text);
                  });
                },
              ),
            ],
          )
        ),
      ),
    );
  }
}
