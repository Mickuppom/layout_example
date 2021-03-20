import 'package:flutter/material.dart';
import 'package:layout_example/page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onIndexChanged(int index) {
    setState(
      () {
        currentIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //         "https://cf-s3.petcoach.co/thumbnails/article/uploads/articles/363/bdd17f44166dbff74876fced4dc6c9d3ca06ad80.jpeg"),
            //   ),
            //   accountName: Text("Mic"),
            //   accountEmail: Text("admin@admin"),
            // ),
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cf-s3.petcoach.co/thumbnails/article/uploads/articles/363/bdd17f44166dbff74876fced4dc6c9d3ca06ad80.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cf-s3.petcoach.co/thumbnails/article/uploads/articles/363/bdd17f44166dbff74876fced4dc6c9d3ca06ad80.jpeg"),
                    ),
                    Text("Mickuppom"),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
              leading: Icon(Icons.history_edu),
              title: Text("History"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        items: pages
            .map(
              (page) =>
                  BottomNavigationBarItem(icon: page.icon, label: page.label),
            )
            .toList(),
      ),
    );
  }
}
