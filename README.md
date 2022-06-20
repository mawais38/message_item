- # Introduction
There are several things that need to be displayed with text in a message in a modern messaging app:
user image, message time, user avatars,reaction etc.To encapsulate all of this functionality into
one widget, our message_item widget provides these out of the box

## Features

There are several things that need to be displayed with text in a message in a modern messaging app:
- #### user avatar 
- #### user name 
- #### message
- #### message time 
- #### reaction 
- ####reaction count

## Usage

```dart
import 'package:flutter/material.dart';

import 'message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MessageWidget(
        id: 1,
        name: 'John Doe',
        imageUrl: 'assets/avatar2.png',
        messages: 'When do you wanna meet?',
        time: '14h',
        repNo: '1 REPLY',
        no: 1);
  }
}

```
![alt text](https://github.com/mawais38/message_item/blob/main/assets/widget.PNG)

## Additional information

I was building a chat application and I needed to get message of sender with different thing like
his name ,message time and reaction on that message. So I went online and found a couple plugin but
then, only one fit the need, I imported it and discovered that it could not works correctly , So I
built message_item. I hope this is what you are looking for and it solves your message problems