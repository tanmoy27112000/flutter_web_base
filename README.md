<div align="center">
  <h1>Flutterbase</h1>
  <div>
    <a title="pub.dev" href="https://pub.dartlang.org/packages/fluent_ui" >
      <img src="https://img.shields.io/pub/v/fluent_ui.svg?style=flat-square&include_prereleases&color=dc143c" />
    </a>
    <a title="Made with Material Design" href="https://github.com/bdlukaa/fluent_ui">
      <img src="https://img.shields.io/badge/material-design-blue">
    </a>  <a title="Web optimized" href="https://bdlukaa.github.io/fluent_ui">
      <img src="https://img.shields.io/badge/web-optimised-important" />
    </a> </div>

  <br/>
  <p>
  Design beautiful <strong>responsive</strong> websites using <a href="https://flutter.dev">Flutter 💙</a>
  </p>

  <p>
  Made with responsiveness and usablity in mind with <a href="https://flutter.dev">Flutter 💙</a>
  </p>
</div>

---



<div class="flexible" align="center">
  <img src="/example/assets/product_view.gif" height="500px" alt="Flutterbase demo gif">  
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
  flutterbase: ^0.0.1
```

<p align="center">OR</p>

```yaml
dependencies:
  flutterbase:
    git: https://github.com/tanmoy27112000/flutterbase.git
```

You can see the example app [here](https://github.com/tanmoy27112000/flutterbase.git)

Finally, run `dart pub get` to download the package.

Projects using this library should use the stable channel of Flutter

### Badge

Are you using this library on your app? You can use a badge to tell others:

<a title="Made with Flutterbase" href="https://github.com/tanmoy27112000/flutterbase.git">
  <img
    src="https://img.shields.io/badge/made%20with-Flutterbase-blue"
  >
</a>

Add the following code to your `README.md` or to your website:

```html
<a title="Made with Flutterbase" href="https://github.com/tanmoy27112000/flutterbase.git">
  <img
    src="https://img.shields.io/badge/made%20with-Flutterbase-blue"
  >
</a>
```

---

### How to use

First you need to import the Flutterbase library

```dart
import 'package:flutterbase/flutterbase.dart';
```

Now you get access to all the widgets in Flutterbase library.

- Nav bar example

```dart
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
```

## Widgets

Flutterbase currently has two types of widget categories:

- Nav bar widget
  - NavBar1
  - NavBar2
  - NavBar3

- Heroes
  - Heroes1
  - Heroes2
  - Heroes3

If a widget type is not supported, You can [add support for new widget type](#contribution) or use the inbuild widget types.

## Contribution

Feel free to [file an issue](https://github.com/tanmoy27112000/flutterbase/issues) if you find a problem or [make pull requests](https://github.com/tanmoy27112000/flutterbase/pulls).

All contributions are welcome :)
