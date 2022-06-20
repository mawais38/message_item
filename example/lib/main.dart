import 'package:flutter/material.dart';

import 'package:message_item/message_item.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MessageWidget(
        id: 1,
        name: 'FriendlyOstrich',
        imageUrl: 'assets/avatar2.png',
        messages:  'zxc',
        time: '2d',
        repNo: '1 REPLY',
        no: 1);
  }
}
