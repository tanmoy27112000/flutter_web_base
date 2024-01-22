import 'package:flutter/material.dart';




class SideBar extends StatefulWidget {
  const SideBar({Key? key, required this.sideBarHeader, required this.headerIcon}) : super(key: key);


  final String sideBarHeader;
  final IconData headerIcon;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.dark_mode),),
      body: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Drawer(
              backgroundColor: Colors.white,
              elevation: 0,
              child: Padding(
                padding:  const EdgeInsets.all(16.0),
                child: ListView(
                  children:  [

                    ListTile(
                      title: Text(
                        widget.sideBarHeader,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,

                        ),
                      ),
                      leading: Icon(widget.headerIcon,color: Colors.blue,size: 40,),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    const Divider(),
                     Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            MyDrawerListTileItem(
                              title: 'Home',
                              materialIcon: Icons.home,
                              tapColor: false, // Set tapColor as per requirement
                            ),
                            MyDrawerListTileItem(
                              title: "Dashboard",
                              materialIcon: Icons.electric_meter,
                              tapColor: false, // Set tapColor as per requirement
                            ),
                            MyDrawerListTileItem(
                              title: "Orders",
                              materialIcon: Icons.wind_power_sharp,
                            ),
                            MyDrawerListTileItem(
                              title: "Products",
                              materialIcon: Icons.shopping_cart,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Divider(),
                            Row(
                              children: [
                                const CircleAvatar(),
                                const SizedBox(width: 10,),
                                const Text("Roopam"),
                                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down_sharp))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            myDrawer,
            NavigationRail(
              extended: isExpanded,
              backgroundColor: Colors.white,
              unselectedIconTheme: const IconThemeData(color: Colors.black, opacity: 1),
              unselectedLabelTextStyle: const TextStyle(
                color: Colors.white,
              ),
              selectedIconTheme: IconThemeData(color: Colors.deepPurple.shade900),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bar_chart),
                  label: Text("Dashboards"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text("Orders"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text("Products"),
                ),


              ],
              selectedIndex: 0,
            ),
            // Sidebar
            Container(
              width: 400.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(1, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Header
                  Container(
                    height: 80.0,
                    color: const Color(0x5CEFEFEF), // Set your desired header color
                    child: const Card(
                      elevation: 1,
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.flutter_dash),
                            Text(
                              'Sidebar',
                              style: TextStyle(
                                color: Colors.black, // Set your desired text color
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // List items
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10, // Set the number of items in your list
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Column(
                            children: [
                              Container(
                                height: 100,
                                child:  Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text('List group item heading',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                        const SizedBox(height: 5,),
                                        Text('$index some content here ',style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
                                      ],
                                    ),
                                    const Text('Mon'),

                                  ],
                                ),
                              ),
                              const Divider(),
                            ],
                          ),
                          // Add your item tap functionality here
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}

class MyDrawerListTileItem extends StatelessWidget {
  final String title;
  final IconData materialIcon;
  final bool tapColor;

  const MyDrawerListTileItem({
    Key? key,
    required this.title,
    required this.materialIcon,
    this.tapColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: Icon(materialIcon),
      title: Text(title),
      tileColor: tapColor ? Colors.blue : Colors.transparent, // Define your tap and regular colors accordingly
      onTap: () {
        // Add onTap functionality here if needed
      },
    );
  }
}



var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(' '),
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'S E T T I N G S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'A B O U T',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);


