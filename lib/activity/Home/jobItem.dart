//THIS IS THE INFO IN EACH CONTAINER

import 'package:flutter/material.dart';
import 'package:sandbox/activity/Home/job.dart';
import 'package:sandbox/activity/Home/jobDetail.dart';
import 'package:sandbox/login.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;

  JobItem(this.job, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 270,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        //Content in the Container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //Job Position
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobDetail(
                                      position: job.position,
                                      time: job.time,
                                      high: job.high,
                                    )));
                      },
                      child: Text(
                        job.position,
                        style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Text(
              job.time,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                //fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              job.salary,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 15,
            ),
            //Job Highlight
            ...job.high
                .map((e) => Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 5,
                            width: 5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: Text(
                              e,
                              style: const TextStyle(
                                  wordSpacing: 2.5, height: 1.3),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ],
        ));
  }
}
