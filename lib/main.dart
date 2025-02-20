import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Profile()));
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int point = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            point++;
          });
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 3, 93, 250),
      ),
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/p1.jpg"),
                radius: 60,
              ),
            ),
            Divider(
              height: 20,
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: 20),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(children: [
              Icon(Icons.person, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text(
                "yasintha Chamikara",
                style: TextStyle(
                    fontSize: 16, color: const Color.fromARGB(255, 71, 71, 71)),
              ),
            ]),
            SizedBox(height: 30),
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Icon(
                Icons.email,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 10),
              Text(
                "yasintha@gmail.com",
                style: TextStyle(
                    fontSize: 16, color: const Color.fromARGB(255, 71, 71, 71)),
              ),
            ]),
            SizedBox(height: 30),
            Text(
              "Address",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Icon(Icons.location_on_rounded, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text(
                "yasintha@gmail.com",
                style: TextStyle(
                    fontSize: 16, color: const Color.fromARGB(255, 71, 71, 71)),
              ),
            ]),
            SizedBox(height: 30),
            Text(
              "Phone Number",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Icon(Icons.phone_android, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text(
                "071 123 4567",
                style: TextStyle(
                    fontSize: 16, color: const Color.fromARGB(255, 71, 71, 71)),
              ),
            ]),
            SizedBox(height: 30),
            Text(
              "Country",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Icon(Icons.flag_circle_rounded, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text(
                "Sri Lanka",
                style: TextStyle(
                    fontSize: 16, color: const Color.fromARGB(255, 71, 71, 71)),
              ),
            ]),
            SizedBox(height: 30),
            Text(
              "Points",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Icon(Icons.star, color: Colors.yellow),
              SizedBox(width: 10),
              Text(
                "$point",
                style: TextStyle(fontSize: 16),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
