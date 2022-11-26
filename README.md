<div align="center">
  <h1>flutter_web_base</h1>
  <div>
    <a title="pub.dev" href="https://pub.dartlang.org/packages/fluent_ui" >
      <img src="https://img.shields.io/pub/v/fluent_ui.svg?style=flat-square&include_prereleases&color=dc143c" />
    </a>
    <a title="Made with Material Design" href="https://github.com/bdlukaa/fluent_ui">
      <img src="https://img.shields.io/badge/material-design-blue">
    </a>  <a title="Web optimized" href="https://bdlukaa.github.io/fluent_ui">
      <img src="https://img.shields.io/badge/web-optimised-important" />
    </a> </div>

  <p>
  Design beautiful <strong>responsive</strong> websites using <a href="https://flutter.dev">Flutter 💙</a>
  </p>

  <p>
  Made with responsiveness and usability in mind with <a href="https://flutter.dev">Flutter 💙</a>
  </p>
</div>

---



<div class="flexible" align="center">
  <img src="https://i.imgur.com/gAsGbJK.gif" height="500px" alt="flutter_web_base demo gif">  
</div>


### Content

- [Motivation](#motivation)
- [Installation](#installation)
  - [Badge](#badge)
  - [How to use](#how-to-use)
- [Widgets](#widgets)
- [Contribution](#contribution)

## Motivation

Since Flutter has added support to WEB. I have been building websites but didn't find any proper package that gives us the capability to easily create websites like other frameworks such as Nativebase or bootstrap.
So keeping in mind the design of bootstrap. I created the responsive design elements in Flutter so that we can easily create responsive websites without having to write much of the code for most used designs.


See also:

- [bootstrap](https://getbootstrap.com)
- [Nativebase](https://nativebase.io)


## Installation

Add the package to your dependencies:

```yaml
dependencies:
  flutter_web_base: ^0.0.5
```

<p align="center">OR</p>

```yaml
dependencies:
  flutter_web_base:
    git: https://github.com/tanmoy27112000/flutter_web_base.git
```

You can see the example app [here](https://github.com/tanmoy27112000/flutter_web_base.git)

Finally, run `dart pub get` to download the package.

Projects using this library should use the stable channel of Flutter

### Badge

Are you using this library on your app? You can use a badge to tell others:

<a title="Made with flutter_web_base" href="https://github.com/tanmoy27112000/flutter_web_base.git">
  <img
    src="https://img.shields.io/badge/made%20with-flutter_web_base-blue"
  >
</a>

Add the following code to your `README.md` or to your website:

```html
<a title="Made with flutter_web_base" href="https://github.com/tanmoy27112000/flutter_web_base.git">
  <img
    src="https://img.shields.io/badge/made%20with-flutter_web_base-blue"
  >
</a>
```

---

### How to use

First you need to import the flutter_web_base library

```dart
import 'package:flutter_web_base/flutter_web_base.dart';
```

Now you get access to all the widgets in flutter_web_base library.

- Nav bar example

```dart
NavBar1(
    title: const Text("flutter_web_base"),
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
```

## Widgets

flutter_web_base currently has two types of widget categories:

- Nav bar widget
  - NavBar1
  - NavBar2
  - NavBar3

<div class="flexible" align="center">
  <img src="https://i.imgur.com/UDJiZfE.png" height="500px" alt="navbar">  
</div>

- Heroes
  - Heroes1
  - Heroes2
  - Heroes3

<div class="flexible" align="center">
  <img src="https://i.imgur.com/WXFRbpq.png" height="500px" alt="heroes">  
</div>

- Features
  - Feature1
  - Feature2

<div class="flexible" align="center">
  <img src="https://i.imgur.com/upVRhLh.png" height="500px" alt="heroes">  
</div>


- Button
  - Button1
  - Button2

<div class="flexible" align="center">
  <img src="https://i.imgur.com/hoWJBfY.png" height="500px" alt="heroes">  
</div>

- Tag
  - BorderTag
  - BorderIconTag
  - NoBorderTag
  - NoBorderIconTag

<div class="flexible" align="center">
  <img src="https://i.imgur.com/TYsVnE6.png" height="500px" alt="heroes">  
</div>

If a widget type is not supported, You can [add support for new widget type](#contribution) or use the inbuild widget types.

## Contribution

Feel free to [file an issue](https://github.com/tanmoy27112000/flutter_web_base/issues) if you find a problem or [make pull requests](https://github.com/tanmoy27112000/flutter_web_base/pulls).

All contributions are welcome :)
