import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/my_drawer.dart';

class NewPageScreen extends StatelessWidget {
  const NewPageScreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.purple.shade300,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/bts.png',
              fit: BoxFit.contain,
              height: 100,
            ),
            const Gap(15),
            Column(
              children: const [
                Text(
                  '@pearamphorn',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Gap(10),
                Text('developer@pearamphorn.com',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 400,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(10),
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey.withOpacity(0.5),
              //       blurRadius: 4,
              //       offset: Offset(4, 5), // Shadow position
              //     ),
              //   ],
              // ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.red.shade200,
                      ),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Amphorn',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(5),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Icon(
                        Icons.mobile_friendly,
                        color: Colors.red.shade200,
                      ),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '+92-3454306',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(5),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.red.shade200,
                      ),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'developer@pearamphorn.com',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(5),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.red.shade200,
                      ),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Sainoi Khunhan Distric 33150',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(5),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Icon(
                        Icons.business,
                        color: Colors.red.shade200,
                      ),
                      Gap(20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Dev Maew Maew',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(5),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
