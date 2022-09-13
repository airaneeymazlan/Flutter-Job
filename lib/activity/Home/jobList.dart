import 'package:flutter/material.dart';
import 'package:sandbox/activity/Home/job.dart';
import 'package:sandbox/activity/Home/jobItem.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 25),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            //padding: const EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.vertical, // Scroll vertical OR horizontal
            itemBuilder: (context, index) => JobItem(jobList[index]),
            separatorBuilder: (_, index) => const SizedBox(
                  height: 15,
                ),
            itemCount: jobList.length));
  }
}
