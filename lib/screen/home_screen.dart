import 'package:flutter/material.dart';
import 'package:flutter_riverpod_fundamentals/layout/default_layout.dart';
import 'package:flutter_riverpod_fundamentals/screen/auto_dispose_modifier_screen.dart';
import 'package:flutter_riverpod_fundamentals/screen/family_modifier_screen.dart';
import 'package:flutter_riverpod_fundamentals/screen/future_provider_screen.dart';
import 'package:flutter_riverpod_fundamentals/screen/notifier_provider_screen.dart';
import 'package:flutter_riverpod_fundamentals/screen/state_provider_screen.dart';
import 'package:flutter_riverpod_fundamentals/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const StateProviderScreen()),
              );
            },
            child: const Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => const NotifierProviderScreen()),
              );
            },
            child: const Text('NotifierProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const FutureProviderScreen()),
              );
            },
            child: const Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const StreamProviderScreen()),
              );
            },
            child: const Text('StreamProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const FamilyModifierScreen()),
              );
            },
            child: const Text('FamilyModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => const AutoDisposeModifierScreen()),
              );
            },
            child: const Text('AutoDisposeModifierScreen'),
          ),
        ],
      ),
    );
  }
}
