library flutter_web_base;

import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feature_highlight/target/target_focus.dart';
import 'feature_highlight/util.dart';
import 'feature_highlight/widgets/feature_highlight_widget.dart';

export 'package:flutter_web_base/nav_bar/nav_bar_1/nav_bar_1.dart';
export 'package:flutter_web_base/nav_bar/nav_bar_2/nav_bar_2.dart';
export 'package:flutter_web_base/nav_bar/nav_bar_3/nav_bar_3.dart';
export 'package:flutter_web_base/heroes/heroe_1/heroe_1.dart';
export 'package:flutter_web_base/heroes/heroe_2/heroe_2.dart';
export 'package:flutter_web_base/heroes/heroe_3/heroe_3.dart';
export 'package:flutter_web_base/feature/feature_1/feature_1.dart';
export 'package:flutter_web_base/feature/feature_2/feature_2.dart';
export 'package:flutter_web_base/button/button_1/button_1.dart';
export 'package:flutter_web_base/button/button_2/button_2.dart';
export 'package:flutter_web_base/tags/border_tag/border_tag.dart';
export 'package:flutter_web_base/tags/border_tag/border_tag_with_icon.dart';
export 'package:flutter_web_base/tags/utils/tag_utils.dart';
export 'package:flutter_web_base/tags/non_border_tag/no_border_tag.dart';
export 'package:flutter_web_base/tags/non_border_tag/no_border_tag_with_icon.dart';
export 'package:flutter_web_base/achievement_banner/achievement_banner_1/achievement_banner_1.dart';
export 'package:flutter_web_base/achievement_banner/achievement_banner_2/achievement_banner_2.dart';
export 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';
export 'package:flutter_web_base/footer/footer.dart';

//Feature Highlight by DK
export 'package:flutter_web_base/feature_highlight/clipper/circle_clipper.dart';
export 'package:flutter_web_base/feature_highlight/clipper/rect_clipper.dart';
export 'package:flutter_web_base/feature_highlight/paint/light_paint.dart';
export 'package:flutter_web_base/feature_highlight/paint/light_paint_rect.dart';
export 'package:flutter_web_base/feature_highlight/target/target_content.dart';
export 'package:flutter_web_base/feature_highlight/target/target_focus.dart';
export 'package:flutter_web_base/feature_highlight/target/target_position.dart';
export 'package:flutter_web_base/feature_highlight/widgets/animated_focus_light.dart';
export 'package:flutter_web_base/feature_highlight/widgets/feature_highlight_widget.dart';
export 'package:flutter_web_base/feature_highlight/util.dart';

class FeatureHighlight {
  final List<TargetFocus> targets;
  final FutureOr<void> Function(TargetFocus)? onClickTarget;
  final FutureOr<void> Function(TargetFocus, TapDownDetails)?
  onClickTargetWithTapPosition;
  final FutureOr<void> Function(TargetFocus)? onClickOverlay;
  final Function()? onFinish;
  final double paddingFocus;
  final Function()? onSkip;
  final AlignmentGeometry alignSkip;
  final String textSkip;
  final TextStyle textStyleSkip;
  final bool hideSkip;
  final Color colorShadow;
  final double opacityShadow;
  final GlobalKey<FeatureHighlightWidgetState> _widgetKey = GlobalKey();
  final Duration focusAnimationDuration;
  final Duration unFocusAnimationDuration;
  final Duration pulseAnimationDuration;
  final bool pulseEnable;
  final Widget? skipWidget;
  final bool showSkipInLastTarget;
  final ImageFilter? imageFilter;

  OverlayEntry? _overlayEntry;

  FeatureHighlight({
    required this.targets,
    this.colorShadow = Colors.black,
    this.onClickTarget,
    this.onClickTargetWithTapPosition,
    this.onClickOverlay,
    this.onFinish,
    this.paddingFocus = 10,
    this.onSkip,
    this.alignSkip = Alignment.bottomRight,
    this.textSkip = "SKIP",
    this.textStyleSkip = const TextStyle(color: Colors.white),
    this.hideSkip = false,
    this.opacityShadow = 0.8,
    this.focusAnimationDuration = const Duration(milliseconds: 600),
    this.unFocusAnimationDuration = const Duration(milliseconds: 600),
    this.pulseAnimationDuration = const Duration(milliseconds: 500),
    this.pulseEnable = true,
    this.skipWidget,
    this.showSkipInLastTarget = true,
    this.imageFilter,
  }) : assert(opacityShadow >= 0 && opacityShadow <= 1);

  OverlayEntry _buildOverlay({bool rootOverlay = false}) {
    return OverlayEntry(
      builder: (context) {
        return FeatureHighlightWidget(
          key: _widgetKey,
          targets: targets,
          clickTarget: onClickTarget,
          onClickTargetWithTapPosition: onClickTargetWithTapPosition,
          clickOverlay: onClickOverlay,
          paddingFocus: paddingFocus,
          onClickSkip: skip,
          alignSkip: alignSkip,
          skipWidget: skipWidget,
          textSkip: textSkip,
          textStyleSkip: textStyleSkip,
          hideSkip: hideSkip,
          colorShadow: colorShadow,
          opacityShadow: opacityShadow,
          focusAnimationDuration: focusAnimationDuration,
          unFocusAnimationDuration: unFocusAnimationDuration,
          pulseAnimationDuration: pulseAnimationDuration,
          pulseEnable: pulseEnable,
          finish: finish,
          rootOverlay: rootOverlay,
          showSkipInLastTarget: showSkipInLastTarget,
          imageFilter: imageFilter,
        );
      },
    );
  }

  void show({required BuildContext context, bool rootOverlay = false}) {
    OverlayState? overlay = Overlay.of(context, rootOverlay: rootOverlay);
    overlay.let((it) {
      showWithOverlayState(overlay: it, rootOverlay: rootOverlay);
    });
  }

  // `navigatorKey` needs to be the one that you passed to MaterialApp.navigatorKey
  void showWithNavigatorStateKey({
    required GlobalKey<NavigatorState> navigatorKey,
    bool rootOverlay = false,
  }) {
    navigatorKey.currentState?.overlay.let((it) {
      showWithOverlayState(
        overlay: it,
        rootOverlay: rootOverlay,
      );
    });
  }

  void showWithOverlayState({
    required OverlayState overlay,
    bool rootOverlay = false,
  }) {
    postFrame(() => _createAndShow(overlay, rootOverlay: rootOverlay));
  }

  void _createAndShow(
      OverlayState overlay, {
        bool rootOverlay = false,
      }) {
    if (_overlayEntry == null) {
      _overlayEntry = _buildOverlay(rootOverlay: rootOverlay);
      overlay.insert(_overlayEntry!);
    }
  }

  void finish() {
    onFinish?.call();
    _removeOverlay();
  }

  void skip() {
    onSkip?.call();
    _removeOverlay();
  }

  bool get isShowing => _overlayEntry != null;

  void next() => _widgetKey.currentState?.next();

  void previous() => _widgetKey.currentState?.previous();

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}