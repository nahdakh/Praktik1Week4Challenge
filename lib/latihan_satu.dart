import 'package:flutter/material.dart';
import 'package:colorlizer/colorlizer.dart';

class PraktekDua extends StatefulWidget {
  const PraktekDua({super.key});

  @override
  State<PraktekDua> createState() => _PraktekDuaState();
}

class _PraktekDuaState extends State<PraktekDua> {
  Color? gantiWarna;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Prakter 1 Pertemuan 3',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconMenu(
                  gambarIcon: Icons.call,
                  namaMenu: 'Call',
                  warnaIconDanText: gantiWarna,
                ),
                IconMenu(
                  gambarIcon: Icons.navigation,
                  namaMenu: 'Navigation',
                  warnaIconDanText: gantiWarna,
                ),
                IconMenu(
                  gambarIcon: Icons.share,
                  namaMenu: 'Share',
                  warnaIconDanText: gantiWarna,
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ColorLizer colorLizer = ColorLizer();
                  gantiWarna = colorLizer.getRandomColors();
                });
              },
              child: const Text('ChangeColor'),
            ),
          ],
        ),
      ),
    );
  }
}

class IconMenu extends StatelessWidget {
  final IconData? gambarIcon;
  final String? namaMenu;
  final Color? warnaIconDanText;
  const IconMenu(
      {super.key, this.gambarIcon, this.namaMenu, this.warnaIconDanText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Icon(
              gambarIcon,
              color: warnaIconDanText,
            ),
            Text(
              namaMenu!,
              style: TextStyle(color: warnaIconDanText),
            )
          ],
        ),
      ],
    );
  }
}
