import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NotiList(),
    );
    //NotiList();
  }

  Widget NotiList() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return NotiItem(index);
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
          );
        },
        itemCount: 20);
  }

  Widget NotiItem(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      message(index),
                      timeAndDate(index),
                    ],
                  )))
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        ),
        child: const Icon(
          Icons.notifications,
          size: 20,
          color: Colors.white,
        ));
  }

  Widget message(int index) {
    return Container(
      // child: RichText(
      //   maxLines: 3,
      //   overflow: TextOverflow.ellipsis,
      //   text: const TextSpan(
      //       text: 'Message',
      //       style: TextStyle(
      //           fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
      //       children: [
      //         TextSpan(
      //             text: 'Message Description',
      //             style: TextStyle(
      //               fontWeight: FontWeight.w400,
      //             ))
      //       ]),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Message',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Message Description',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            '12-09-2022',
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
