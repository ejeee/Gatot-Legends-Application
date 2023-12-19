import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pickwarrior/views/pickwarrior_view.dart';
import '../controllers/home_controller.dart';
import '../widgets/add_resource.dart';
import '../widgets/arena_button.dart';
import '../widgets/fight_button.dart';
import '../widgets/fightpass_button.dart';
import '../widgets/gems.dart';
import '../widgets/quest_button.dart';
import '../widgets/dollar.dart';
import '../widgets/setting_button.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SettingButton(
                  function: () {
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Dollar(
                      text: '99',
                      function: () {
                        // Your button function logic here
                      },
                    ),
                    Gems(
                      text: '99',
                      function: () {
                        // Your button function logic here
                      },
                    ),
                    AddResource(
                      function: () {
                        // Your button function logic here
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/app/assets/baground.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: [
                  FightPassButton(
                    function: () {
                      // Your button function logic here
                    },
                  ),
                  ArenaButton(
                    function: () {
                      // Your button function logic here
                    },
                  ),
                  QuestButton(
                    function: () {
                      // Your button function logic here
                    },
                  ),
                  FightButton(
                    function: () {
                      Get.to(PickwarriorView());
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 5,
            color: Colors.green,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/app/assets/TANAH.png'),
                  fit: BoxFit.fitWidth,
                  alignment: FractionalOffset(1.0, 0.1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
