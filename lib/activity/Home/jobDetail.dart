import 'package:flutter/material.dart';
import 'package:sandbox/Drawer/mainPage.dart';
import 'package:sandbox/activity/Home/applyJob.dart';
import 'package:sandbox/activity/Home/jobItem.dart';
import 'package:sandbox/activity/Home/homePage.dart';

class JobDetail extends StatefulWidget {
  JobDetail({
    Key? key,
    required this.position,
    required this.time,
    required this.high,
    required this.responsibilities,
    required this.skills,
    required this.add,
  }) : super(key: key);

  //Update at job Detail, Job,
  String position;
  String time;
  List high;
  List responsibilities;
  List skills;
  List add;

  @override
  State<JobDetail> createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                (widget.position),
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Job Highlight',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ...widget.high
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
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Job Responsibilities',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ...widget.responsibilities
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
              const SizedBox(
                height: 25,
              ),

              //Skills
              const Text(
                'Skills',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ...widget.skills
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
              const SizedBox(
                height: 25,
              ),

              //Addition Information
              const Text(
                'Adition Information',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ...widget.add
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
              SizedBox(
                height: 25,
              ),

              //Apply Now Button
              Column(
                children: [
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ApplyJob()));
                    },
                    color: const Color(0xFF000000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "Apply",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // return Container(
    //   child: Column(
    //     children: [Text(widget.position), Text(widget.time)],
    //   ),
    // );
  }
}
