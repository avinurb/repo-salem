import 'dart:io';
import 'package:flutter/material.dart';
import 'profiles_subDirectories/EditProfileS.dart'; // Import EditProfilePage
import 'profiles_subDirectories/ProfilePictureS.dart';
import 'profiles_subDirectories/PremiumAccountS.dart';
import 'profiles_subDirectories/OnlineSupportS.dart';
import 'package:draft_ap/Logins/HomeS.dart';
import 'package:draft_ap/categories/dastebandiA.dart';
import 'package:draft_ap/ColorPlate.dart';
import 'package:draft_ap/homepage/homeA.dart';
void main() {
  runApp(MyApp());
}

class ProfileS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: pastelSaffron,
        appBarTheme: AppBarTheme(
          backgroundColor: pastelSandyBrown,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black87, fontSize: 20), // متن خواناتر
          bodyMedium: TextStyle(color: Colors.black54, fontSize: 18), // متن کمی پررنگ‌تر
        ),
        iconTheme: IconThemeData(color: Colors.black54), // آیکون پررنگ‌تر
        listTileTheme: ListTileThemeData(
          tileColor: pastelLightCyan,
          textColor: Colors.black87,
          iconColor: Colors.black87,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: UserAccountApp(),
    );
  }
}

class UserAccountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserAccountPage(
      user: {
        'name': 'Default User',
        'email': 'user@example.com',
        'account type': 'Free Account',
      },
    );
  }
}

class UserAccountPage extends StatefulWidget {
  final Map<String, String> user;

  const UserAccountPage({Key? key, required this.user}) : super(key: key);

  @override
  _UserAccountPageState createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  late Map<String, String> userData;
  File? _profileImage;

  @override
  void initState() {
    super.initState();
    userData = Map<String, String>.from(widget.user);
  }

  void _updateUserData(Map<String, String> updatedUser) {
    setState(() {
      userData = updatedUser;
    });
  }

  void _updateProfileImage(File? newImage) {
    setState(() {
      _profileImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfilePicturePage(
                            onImageSelected: _updateProfileImage,
                          ),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: _profileImage != null
                          ? FileImage(_profileImage!)
                          : null,
                      child: _profileImage == null
                          ? const Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.black,
                      )
                          : null,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    userData['name']!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    userData['email']!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    userData['account type']!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                buildMenuItem(
                  context,
                  icon: Icons.edit,
                  text: "Edit Profile",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfilePage(
                          user: userData,
                          onSave: _updateUserData,
                        ),
                      ),
                    );
                  },
                ),
                buildMenuItem(
                  context,
                  icon: Icons.star,
                  text: "Premium Accounts",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PremiumAccountS(
                          onAccountTypeChanged: (newAccountType) {
                            setState(() {
                              userData['account type'] = newAccountType;
                            });
                          },
                        ),
                      ),
                    );
                  },
                ),
                buildMenuItem(
                  context,
                  icon: Icons.favorite,
                  text: "Wishlist",
                  onTap: () {},
                ),
                buildMenuItem(
                  context,
                  icon: Icons.history,
                  text: "Order History",
                  onTap: () {},
                ),
                buildMenuItem(
                  context,
                  icon: Icons.add_circle,
                  text: "Online Support",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SupportChat(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        selectedItemColor: Theme.of(context).iconTheme.color,
        unselectedItemColor: Theme.of(context).iconTheme.color?.withOpacity(0.5),
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepageA()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CategoryPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileS()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Homepage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(
      BuildContext context, {
        required IconData icon,
        required String text,
        required VoidCallback onTap,
      }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black), // آیکون سمت چپ
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ), // متن آیتم
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey), // فلش سمت راست
      onTap: onTap, // عمل کلیک
      tileColor: const Color(0xFFF1F1F1), // رنگ پس‌زمینه آیتم
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // گوشه‌های گرد
      ),
    );
  }

}
