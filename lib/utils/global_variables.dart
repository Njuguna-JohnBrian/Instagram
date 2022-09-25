import 'package:flutter/material.dart';
import 'package:instagram/screens/feed_screen.dart';

import '../screens/add_post_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('Search'),
  AddPostScreen(),
  Text('Notifications'),
  Text('Profile')
];
