import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.messages,
    required this.time,
    required this.repNo,
    required this.no,
  }) : super(key: key);
  final int id;
  final String name;
  final String imageUrl;
  final String messages;
  final String time;
  final String repNo;
  final int no;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                  maxRadius: 30,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              time,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          messages,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.grey),
                              child: Center(
                                child: Text(
                                  repNo,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Icon(Icons.emoji_emotions_sharp,
                                color: Color(0xfff4c13f)),
                            Text(
                              no.toString(),
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 22,
                            ),
                            const Icon(Icons.emoji_emotions_rounded,
                                color: Color(0xfff4c13f)),
                            Text(
                              no.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                             const Icon(
                              Icons.face_retouching_natural_rounded,size: 28.0,color: Colors.grey,
                             )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
