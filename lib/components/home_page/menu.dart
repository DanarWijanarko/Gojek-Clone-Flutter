import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/data/icons.dart';
import 'package:gojek/theme.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 25),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 0,
          children: [
            ...menuIcon.map((icon) => Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color:
                            icon.icon == 'goclub' ? Colors.white : icon.color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SvgPicture.asset(
                        'assets/icon/${icon.icon}.svg',
                        color: icon.icon == 'goclub'
                            ? icon.color
                            : icon.icon == 'other'
                                ? dark2
                                : Colors.white,
                        width: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      icon.title,
                      style: regular12_5.copyWith(color: dark2),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
