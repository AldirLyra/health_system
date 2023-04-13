import 'package:flutter/material.dart';

class SuplementsListMock {
  final String text;
  final String description;
  final String image;
  final Color color;
  SuplementsListMock({
    required this.text,
    required this.description,
    required this.image,
    required this.color,
  });
}

final suplementMock = [
  SuplementsListMock(
    text: 'Trembolona',
    description: 'Um presente da natureza',
    image: 'assets/images/trembolona.png',
    color: Colors.red,
  ),
  SuplementsListMock(
    text: 'Masteron',
    description: 'Um belo cavalo',
    image: 'assets/images/masteron.png',
    color: Colors.red,
  ),
  SuplementsListMock(
    text: 'Testosterona',
    description: 'Um verdadeiro gorila',
    image: 'assets/images/testosterona.png',
    color: Colors.green,
  ),
];
