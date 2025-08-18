import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        backgroundColor: Color.fromRGBO(38, 94, 215, 1),
        flexibleSpace: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Doctor Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 36, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === 1. Doctor Info  ===
            Row(
              spacing: 30,
              children: [
                // Profile Picture
                ClipOval(
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/previews/051/010/150/large_2x/muslim-woman-doctor-wearing-hijab-smiling-with-arms-crossed-on-white-background-photo.jpg',
                    width: 135,
                    height: 135,
                    fit: BoxFit.cover,
                  ),
                ),

                // Doctor Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Yasmine Ali",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(38, 94, 215, 1),
                        ),
                      ),
                      Text(
                        "Eye Specialist",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Text(" 3", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 10),

                      // Two Call Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // 1st Call Button
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(60, 180, 249, 0.13),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.phone, color: Colors.black),
                                Text(
                                  "1",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 16),

                          // 2nd Call Button
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(60, 180, 249, 0.13),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.phone, color: Colors.black),
                                Text(
                                  "2",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // === 2. About Section ===
            Text(
              "About",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Professor of Eye Special - Former Head of Department of Eye Special, Cairo University",
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 20),

            // === 3. Hospital Info ===
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromRGBO(60, 180, 249, 0.13),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hospital Name
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color.fromRGBO(38, 94, 215, 1),
                        child: Icon(
                          Icons.local_hospital,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Cleopatra Hospital",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  // Time
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color.fromRGBO(38, 94, 215, 1),
                        child: Icon(
                          Icons.access_time,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text("10 - 19", style: TextStyle(fontSize: 16)),
                    ],
                  ),

                  SizedBox(height: 8),

                  // Address
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color.fromRGBO(38, 94, 215, 1),
                        child: Icon(
                          Icons.location_on,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "2 Gamaa Street, Giza",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Divider(
              color: Colors.black,
              thickness: 1.0,
              indent: 16,
              endIndent: 16,
            ),
            SizedBox(height: 16),

            // === 4. Contact Info ===
            Text(
              "Contact Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromRGBO(60, 180, 249, 0.13),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Email
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color.fromRGBO(38, 94, 215, 1),
                        child: Icon(Icons.email, size: 18, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Text("dr@6.com", style: TextStyle(fontSize: 16)),
                    ],
                  ),

                  SizedBox(height: 8),

                  // Phone 1
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color.fromRGBO(38, 94, 215, 1),
                        child: Icon(Icons.phone, size: 18, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Text("01032564823", style: TextStyle(fontSize: 16)),
                    ],
                  ),

                  SizedBox(height: 8),

                  // Phone 2
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Color.fromRGBO(38, 94, 215, 1),
                        child: Icon(Icons.phone, size: 18, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Text("01125466125", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // === 5. Action Buttons ===
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Chat With Dr. Yasmine",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(38, 94, 215, 1),
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  "Book an Appointment",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
