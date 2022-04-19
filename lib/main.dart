import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('پروفایل'),
          centerTitle: true,
          backgroundColor: Colors.red[900],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: getMainContact(),
            ),
          ),
        ),
      ),
    );
  }

  Widget getMainContact() {
    return Column(
      children: [
        SizedBox(height: 10),
        CircleAvatar(
          backgroundImage: AssetImage('images/user.png'),
          radius: 70,
        ),
        SizedBox(height: 10),
        Text(
          'امیررضا خسروی',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'امیررضام عاشق دنیای برنامه نویسی و برنامه نویسی موبایل',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'صفحه های مجازی من',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        getRowIcon(),
        SizedBox(height: 10),
        getSkillsLables(),
        SizedBox(height: 20),
        Title(
          color: Colors.black,
          child: Text(
            'درباره من',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        getHistory(),
      ],
    );
  }

  Widget getRowIcon() {
    return Wrap(
      spacing: 20,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.githubSquare),
          color: Colors.blueGrey,
        ),
      ],
    );
  }

  Widget getSkillsLables() {
    var list = ['flutter', 'dart'];
    return Wrap(
      spacing: 20,
      children: [
        for (var skill in list)
          Card(
            elevation: 8,
            shadowColor: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget getHistory() {
    var list = [
      'امیررضا خسروی برنامه نویس موبایل',
      'متولد 27 ابان 1382',
      'از سال 1400 شروع به یادگیری برنامه نویسی کردم',
      'حدود 4 ماه شروع به کار کردن با فلاتر',
      ' شروع فلاتر با دوره اموزشی امیراحمد ادیبی',
    ];
    return Container(
      width: 390,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          for (var text in list)
            Text(
              '$text',
              style: TextStyle(fontSize: 15),
              textDirection: TextDirection.rtl,
            )
        ],
      ),
    );
  }
}
