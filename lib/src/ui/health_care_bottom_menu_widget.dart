import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../health_care_style.dart';
import '../model/hc_menu.dart';
import '../riverpod/menu_index_provider.dart';

class HealthCareBottomMenuWidget extends StatefulWidget {
  const HealthCareBottomMenuWidget({Key? key}) : super(key: key);

  @override
  State<HealthCareBottomMenuWidget> createState() => _HealthCareBottomMenuWidgetState();
}

class _HealthCareBottomMenuWidgetState extends State<HealthCareBottomMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 72,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Consumer(builder: (context, ref, _) {
          final index = ref.watch(hcMenuIndexProvider);
          return Row(
            children: bottomMenuItems
                .map(
                  (e) => Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 3,
                          color: index == e.index ? healthCarePrimaryColor : Colors.transparent,
                        ),
                        IconButton(
                          onPressed: () {
                            ref.read(hcMenuIndexProvider.notifier).state = e.index ?? 0;
                          },
                          icon: e.iconWidget ?? const Icon(Icons.home),
                          iconSize: 32,
                          color: index == e.index ? healthCarePrimaryColor : Colors.grey,
                        ),
                        Text(
                          e.title ?? "?",
                          style: TextStyle(
                            color: index == e.index ? healthCarePrimaryColor : Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          );
        }),
      ),
    );
  }
}
