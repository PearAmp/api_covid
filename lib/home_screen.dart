import 'package:api_covid/screen/new_page.dart';
import 'package:api_covid/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required String title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//drawer
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

//Api Part
  List _data = []; //ตัวแปรเก็บข้อมูล

  Future<String> getData() async {
    print(456);
    var url = Uri.https('covid19.ddc.moph.go.th',
        'api/Cases/today-cases-by-provinces', {'q': '{http}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      this.setState(() {
        _data = jsonResponse;
      });
    } else {}
    return 'success';
  }

  @override
  void initState() {
    print(123);
    getData();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //drawer key
        key: _scaffoldkey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              _scaffoldkey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
          backgroundColor: Colors.purple.shade300,
          title: Text('Thai Covid-19'),
        ),
        drawer: MyDrawer(
          onMenuTap: (page) {
            print(page);
          },
        ),

        body: Padding(
          padding: const EdgeInsets.all(0),
          child: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.purple.shade400,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      '${_data[index]['province']}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(10),
                    Text(
                      'ผู้ติดเชื้อทั้งหมด',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Gap(10),
                    Text(
                      '${_data[index]['total_case'] ?? ''} คน',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// return ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text(_data[index]['province']),
          //   subtitle: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'จำนวนผู้ติดเชื้อใหม่ ${_data[index]['new_case']} คน',
          //         style:
          //             TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          //       ),
          //       Text(
          //         'จำนวนผู้เสียชีวิต ${_data[index]['new_death']} ราย',
          //         style:
          //             TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          //       ),
          //     ],
          //   ),
          // );

          // Container(
          //   height: 100,
          //   width: MediaQuery.of(context).size.width,
          //   padding: EdgeInsets.all(15),
          //   decoration: BoxDecoration(
          //     color: Colors.blue.shade600,
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Column(
          //     children: [
          //       Text(
          //         'จำนวนผู้ติดเชื้อทั้งหมด',
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 18,
          //             fontWeight: FontWeight.w500),
          //       ),
          //       Gap(10),
          //       Text(
          //         '${_data[0]['total_case'] ?? ''} คน',
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          // ),
          // Gap(20),
          // Container(
          //   child: Column(
          //     children: [
          //       Text('อัพเดตข้อมูล ${_data[0]['update_date'] ?? ''}'),
          //       Gap(10),
          //       Text('โดย นางสาวอัมพร นวลสาร')
          //     ],
          //   ),
          // ),