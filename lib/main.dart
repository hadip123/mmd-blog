import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.aleo(color: Colors.blue[900])))));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue[800]),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Hadi Blog',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      drawer: Container(
          width: 300,
          child: Drawer(
            elevation: 0,
            child: ListView(
              children: [
                Container(
                  height: 300,
                  child: DrawerHeader(
                      child: Column(
                    children: [
                      CircleAvatar(
                        radius: 105,
                        backgroundColor: Colors.amber,
                        backgroundImage: NetworkImage(
                            'https://s17.picofile.com/file/8417906150/blogging_content.png'),
                      ),
                      Text(
                        'Hadi Blog',
                        style: GoogleFonts.rakkas(fontSize: 24),
                      )
                    ],
                  )),
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                )
              ],
            ),
          )),
    );
  }
}
