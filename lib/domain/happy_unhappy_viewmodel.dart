import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final happyProvider = StateProvider<int>((ref) => 0);
final unhappyProvider = StateProvider<int>((ref) => 0);

