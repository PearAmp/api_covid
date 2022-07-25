import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../screen/new_page.dart';

class MyDrawer extends StatefulWidget {
  //get to new page
  final Function(int) onMenuTap;

  const MyDrawer({Key? key, required this.onMenuTap}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int initialIndex = 0;

  final activeTextStyle = TextStyle(color: Colors.white);
  final inactiveTextStyle = TextStyle(color: Colors.black);
  final activeDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: Colors.purple.shade300,
  );

  final List<String> menus = [
    'News',
    'Covid',
  ];
  final List<IconData> icons = [
    Icons.newspaper,
    Icons.coronavirus,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/bts.png',
                  width: 50,
                ),
                Gap(10),
                Text('Pear Amphorn'),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(menus.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate,
                  decoration: initialIndex == index
                      ? activeDecoration
                      : BoxDecoration(),
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        initialIndex = index;
                      });
                      widget.onMenuTap(index);
                    },
                    title: Text(
                      menus[index],
                      style: initialIndex == index
                          ? activeTextStyle
                          : inactiveTextStyle,
                    ),
                    leading: Icon(
                      icons[index],
                      color:
                          initialIndex == index ? Colors.white : Colors.black54,
                    ),
                  ),
                ),
              );
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.purple,
            thickness: 1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 20),
                child: Text(
                  'Document',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewPageScreen(
                              title: '',
                            )),
                  );
                },
                child: const ListTile(
                  title: Text('Profile'),
                  leading: Icon(Icons.person),
                ),
              ),
              const ListTile(
                title: Text('Share'),
                leading: Icon(Icons.share),
              ),
              const ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.red),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
