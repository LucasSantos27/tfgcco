import 'package:flutter/material.dart';

class ProfileTile {
  final IconData leading;
  final String title;
  final VoidCallback onTap;

  ProfileTile({
    required this.leading,
    required this.title,
    required this.onTap,
  });
}
