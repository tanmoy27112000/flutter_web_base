import 'package:flutter/material.dart';
import 'package:flutterbase/flutterbase.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Column(
        children: <Widget>[
          NavBar1(
            title: const Text("Flutterbase"),
            logo: const FlutterLogo(
              size: 40,
            ),
            navBarActions: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
          ),
          NavBar2(
            navBarActions: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
          ),
          NavBar3(
            logo: const FlutterLogo(
              size: 30,
            ),
            navBarCenterItems: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
            navBarActions: [
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: const Text("SignUp")),
            ],
          ),
          NavBar3(
            logo: const FlutterLogo(
              size: 30,
            ),
            alignLeft: true,
            navBarCenterItems: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
            navBarActions: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 200,
                height: 30,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: "Search....",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: const Text("SignUp")),
            ],
          ),
          NavBar3(
            logo: const Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterLogo(
                size: 30,
              ),
            ),
            backgroundColor: Colors.black,
            alignLeft: true,
            navBarCenterItems: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
            navBarActions: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 200,
                height: 30,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: "Search....",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: () {}, child: const Text("SignUp")),
              const SizedBox(width: 20),
            ],
          ),
          NavBar3(
            logo: const Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterLogo(
                size: 30,
              ),
            ),
            alignLeft: true,
            navBarCenterItems: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
            navBarActions: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 200,
                height: 30,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: "Search....",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80"),
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text("New project.."),
                  ),
                  const PopupMenuItem(
                    child: Text("Settings"),
                  ),
                  const PopupMenuItem(
                    child: Text("Profile"),
                  ),
                  const PopupMenuItem(
                    child: Text("Sign Out"),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
