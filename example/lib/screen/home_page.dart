import 'package:example/screen/achievement_banner_page.dart';
import 'package:example/screen/button_page.dart';
import 'package:example/screen/feature_page.dart';
import 'package:example/screen/footer_page.dart';
import 'package:example/screen/heroes_page.dart';
import 'package:example/screen/nav_bar_screen.dart';
import 'package:example/screen/tag_page.dart';
import 'package:flutter_web_base/flutter_web_base.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final GlobalKey _navBarKey = GlobalKey();
  final GlobalKey _buttonsKey = GlobalKey();
  final GlobalKey _featuresKey = GlobalKey();
  final GlobalKey _tagKey = GlobalKey();
  final GlobalKey _bannerKey = GlobalKey();
  final GlobalKey _heroesKey = GlobalKey();
  final GlobalKey _footerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _createTutorial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter_web_base"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 5,
        children: <Widget>[
          ElevatedButton(
            key: _navBarKey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavBarScreen(),
                ),
              );
            },
            child: const Text("Navbar screen"),
          ),
          ElevatedButton(
            key: _heroesKey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HeroesScreen(),
                ),
              );
            },
            child: const Text("Heroes"),
          ),
          ElevatedButton(
            key: _featuresKey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FeatureScreen(),
                ),
              );
            },
            child: const Text("Features"),
          ),
          ElevatedButton(
            key: _buttonsKey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtonPage(),
                ),
              );
            },
            child: const Text("Buttons"),
          ),
          ElevatedButton(
            key: _tagKey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TagPage(),
                ),
              );
            },
            child: const Text("Tags"),
          ),
          ElevatedButton(
            key: _bannerKey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AchievementBannerPage(),
                ),
              );
            },
            child: const Text("Achievement Banner"),
          ),
          ElevatedButton(
            key: _footerKey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FooterPage(),
                ),
              );
            },
            child: const Text("Footer"),
          ),
        ],
      ),
    );
  }
  Future<void> _createTutorial() async {
    final targets = [
      TargetFocus(
        identify: 'navBar',
        keyTarget: _navBarKey,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'Use this button to explore different navbars',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      TargetFocus(
        identify: 'heroes',
        keyTarget: _heroesKey,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'Use this button to explore different Heroes',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      TargetFocus(
        identify: 'banner',
        keyTarget: _bannerKey,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) => Text(
              'Use this button to explore different Banners',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      TargetFocus(
        identify: 'footer',
        keyTarget: _footerKey,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) => Text(
              'Use this button to explore different navbars',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      TargetFocus(
        identify: 'tags',
        keyTarget: _tagKey,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'Use this button to explore different tags',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      TargetFocus(
        identify: 'buttons',
        keyTarget: _buttonsKey,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'Use this button to explore different buttons',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      TargetFocus(
        identify: 'features',
        keyTarget: _featuresKey,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) => Text(
              'Use this button to explore different Features',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    ];

    final tutorial = FeatureHighlight(
      targets: targets,
    );

    Future.delayed(const Duration(milliseconds: 500), () {
      tutorial.show(context: context);
    });
  }
}
