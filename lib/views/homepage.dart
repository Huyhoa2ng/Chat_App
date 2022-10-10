import 'package:clone_whatsapp/views/home/home_widgets.dart';
import 'package:clone_whatsapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:clone_whatsapp/constants/colors.dart';
// ignore: unused_import
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:clone_whatsapp/constants/users.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.group_add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Chats',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.search,
                    size: 26,
                    color: greenColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    addStoryWidget(
                      size: 60,
                      iconData: Icons.add,
                      text: 'New status',
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                            persons.length,
                            (index) => storyWidget(
                                showGreenstrip: index == 2 || index == 3,
                                size: 60,
                                text: persons.reversed
                                    .toList()[index]['first_name']
                                    .toString(),
                                imageUrl: persons.reversed
                                    .toList()[index]['picture']
                                    .toString())),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: persons.length,
                separatorBuilder: ((context, index) {
                  return Divider(
                    thickness: 0.7,
                  );
                }),
                itemBuilder: ((context, index) => messagelistTitle(
                    context: context,
                    urlImage: persons[index]['picture'].toString(),
                    title:
                        "${persons[index]['first_name']}${persons[index]['last_name']}", //get link from constants
                    subtitle: persons[index]['title'].toString(),
                    messageCounter: 5,
                    timeframe: '23:59')),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.phone,
                size: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                size: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 24,
              ),
              label: ''),
        ],
        selectedItemColor: greenColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
