import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({super.key});

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Footer"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Footer1(
              title: "2023 Flutter.dev",
              logo: const FlutterLogo(),
              action: [
                TextButton(
                  child: const Text("Home"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Feature"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Pricing"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("FAQs"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("About"),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Footer2(
              title: "\u00a9 2023 Flutter.dev",
              logo: const FlutterLogo(),
              action: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "twitter.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "instagram.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "facebook.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Footer3(
              title: "\u00a9 2023 Flutter.dev",
              logo: const FlutterLogo(),
              action: [
                TextButton(
                  child: const Text("Home"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Feature"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Pricing"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("FAQs"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("About"),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Footer4(
              title: "\u00a9 2023",
              logo: const FlutterLogo(),
              text: "Section",
              action: [
                TextButton(
                  child: const Text("Home"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Feature"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Pricing"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("FAQs"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("About"),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Footer5(
              title: "\u00a9 2023 Company, Inc. All rights reserved.",
              logo: const FlutterLogo(),
              text: "Section",
              action: [
                TextButton(
                  child: const Text("Home"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Feature"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Pricing"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("FAQs"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("About"),
                  onPressed: () {},
                ),
              ],
              newsletter: [
                const Text(
                  "Subscribe to our newsletter",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const Text(
                    "Monthly digest of what's new and exciting from us."),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 400,
                      height: 40,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                              hintText: "Email Address",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Button1(text: "Subscribe"),
                  ],
                )
              ],
              socials: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "twitter.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "instagram.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "facebook.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
