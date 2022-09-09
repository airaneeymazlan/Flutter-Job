import 'package:sandbox/login.dart';

class Job {
  String position;
  bool isMark;
  String time;
  String salary;
  List<String> high;
  List<String> responsibilities;
  List<String> skills;
  List<String> add;
  Job(this.position, this.isMark, this.time, this.salary, this.high,
      this.responsibilities, this.skills, this.add);

  static List<Job> generateJobs() {
    return [
      Job(
        'UX Designer',
        false,
        'Fulltime',
        'MYR 3000',
        [
          'Fully flexible ',
          '5 days working per week',
        ],
        [
          'Stay up-to-date with new technology trends',
          'Gather specific requirements and suggest solutions',
          'Troubleshoot and debug to optimize performance'
        ],
        [
          'Fully flexible ',
          '5 days working per week',
        ],
        [
          'Fully flexible ',
          '5 days working per week',
        ],
      ),
      Job('IT & Digital Internship Programme', false, 'Fulltime', 'MYR 3000', [
        'Career development opportunities',
        'We practice good working environment',
        'We provide training for newcomers'
      ], [
        'Stay up-to-date with new technology trends',
        'Gather specific requirements and suggest solutions',
        'Troubleshoot and debug to optimize performance'
      ], [
        'Fully flexible ',
        '5 days working per week',
      ], [
        'Fully flexible ',
      ]),
      Job(
        'IOS Mobile Developer',
        false,
        'Fulltime',
        'MYR 1500 - 3000',
        [
          'Performance driven organization',
          'Competitive salary and benefits',
          'Nearby public transport'
        ],
        [
          'Stay up-to-date with new technology trends',
          'Gather specific requirements and suggest solutions',
          'Troubleshoot and debug to optimize performance'
        ],
        [
          'Fully flexible ',
          '5 days working per week',
        ],
        [
          'Fully flexible ',
          '5 days working per week',
        ],
      ),
      Job(
        'Mobile Developer',
        false,
        'Fulltime',
        'MYR 6K - MYR 12K',
        [
          'Attractive remuneration',
          'Learn the newest Technologies',
          '7 days working per week'
        ],
        [
          'Stay up-to-date with new technology trends',
          'Gather specific requirements and suggest solutions',
          'Troubleshoot and debug to optimize performance'
        ],
        [
          'Fully flexible ',
          '5 days working per week',
        ],
        [
          'Fully flexible ',
          '5 days working per week',
        ],
      ),
    ];
  }
}
