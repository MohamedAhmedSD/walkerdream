import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod/menu_index_provider.dart';
import 'hc_chat_msg_page.dart';
import 'hc_home_widget.dart';
import 'health_care_bottom_menu_widget.dart';
import 'health_care_chat_page.dart';
import 'package:badges/badges.dart' as badges;

class HealthCareHomePage extends StatefulWidget {
  const HealthCareHomePage({Key? key}) : super(key: key);

  @override
  State<HealthCareHomePage> createState() => _HealthCareHomePageState();
}

class _HealthCareHomePageState extends State<HealthCareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 52,
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(hcMenuIndexProvider);
                if (index == 6) {
                  return Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          ref.read(hcMenuIndexProvider.notifier).state = 0;
                        },
                        icon: const Icon(Icons.keyboard_arrow_left_outlined),
                        color: Colors.grey,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mail),
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                        color: Colors.grey,
                      ),
                    ],
                  );
                }
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: const Icon(Icons.search),
                            // contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText:
                                index == 0 ? "Search messages..." : "Search...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        ref.read(hcMenuIndexProvider.notifier).state = 0;
                      },
                      child: const badges.Badge(
                        badgeContent: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        child: Icon(Icons.message_outlined),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.account_circle,
                      ),
                    )
                  ],
                );
              }),
            ),
            Expanded(
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(hcMenuIndexProvider);
                return IndexedStack(
                  index: index,
                  children: [
                    const HealthCareChatPage(),
                    const HcHomeWidget(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    const HcChatMsgPage(),
                  ],
                );
              }),
            )
          ],
        ),
      ),
      bottomNavigationBar: const HealthCareBottomMenuWidget(),
    );
  }
}
