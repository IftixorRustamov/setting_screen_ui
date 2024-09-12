import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget divider = Divider(height: 3);

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                  ),
                  SizedBox(width: 90),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            buildCategoryContainer(title: "MY ACCOUNT"),
            buildContainer(settingName: "Name", rightTitle: "Sarah Jonas"),
            divider,
            buildContainer(
                settingName: "Username", rightTitle: "sarah_jonas123"),
            divider,
            buildContainer(
                settingName: "Birthday", rightTitle: "August 1, 1990"),
            divider,
            buildContainer(
                settingName: "Mobile Number", rightTitle: "+1423251"),
            divider,
            buildContainer(settingName: "Email"),
            divider,
            buildContainer(settingName: "Password"),
            buildCategoryContainer(title: "APP SETTINGS"),
            buildContainer(settingName: "Appereance", rightTitle: "Light"),
            divider,
            buildContainer(settingName: "Accessibility"),
            divider,
            buildContainer(settingName: "Language", rightTitle: "English, UK"),
            divider,
            buildContainer(settingName: "Text & Images"),
          ],
        ),
      ),
    ),
  );
}

Widget buildContainer({required String settingName, String rightTitle = ""}) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 50,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          settingName,
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          children: [
            Text(
              rightTitle == "" ? "" : rightTitle,
              style: TextStyle(color: Colors.grey),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
          ],
        ),
      ],
    ),
  );
}

Widget buildCategoryContainer({required String title}) {
  return Container(
    padding: EdgeInsets.all(10),
    color: Colors.grey.shade300,
    height: 55,
    width: double.infinity,
    child: Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    ),
  );
}
