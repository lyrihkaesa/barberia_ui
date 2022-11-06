import 'package:flutter/material.dart';

import 'styles.dart';
import 'emphasis.dart';

class BarberiaText extends StatelessWidget {
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  BarberiaText.display(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = displayStyle;

  /// Highlight are best-suited for short, high-emphasis text
  /// on smaller screens.
  /// These styles can be good for marking primary passages of text or
  /// important regions of content.
  BarberiaText.highlightLarge(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = highlightLargeStyle;

  /// Highlight are best-suited for short, high-emphasis text
  /// on smaller screens.
  /// These styles can be good for marking primary passages of text or
  /// important regions of content.
  BarberiaText.highlightMedium(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = highlightMediumStyle;

  /// Highlight are best-suited for short, high-emphasis text
  /// on smaller screens.
  /// These styles can be good for marking primary passages of text or
  /// important regions of content.
  BarberiaText.highlightSmall(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = highlightSmallStyle;

  /// Titles are smaller than headline styles, and should be used for
  /// medium-emphasis text that remains relatively short.
  BarberiaText.titleLarge(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = titleLargeStyle;

  /// Titles are smaller than headline styles, and should be used for
  /// medium-emphasis text that remains relatively short.
  BarberiaText.titleMedium(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = titleMediumStyle;

  /// Titles are smaller than headline styles, and should be used for
  /// medium-emphasis text that remains relatively short.
  BarberiaText.titleSmall(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = titleSmallStyle;

  /// Body styles are used for longer passages of text.
  BarberiaText.body(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = bodyStyle.copyWith(color: emphasis.color);

  /// Caption styles are smaller, utilitarian styles,
  /// used for things like the text inside components or for very small text in
  /// the content body.
  BarberiaText.caption(
    this.data, {
    super.key,
    this.emphasis = Emphasis.normal,
    this.align = TextAlign.left,
    this.maxLines,
  }) : style = captionStyle.copyWith(color: emphasis.color);

  final String data;
  final TextStyle style;
  final TextAlign align;
  final Emphasis emphasis;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
      textAlign: align,
      maxLines: maxLines,
    );
  }
}
