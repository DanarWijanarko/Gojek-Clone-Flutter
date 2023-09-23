import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/theme.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: dark4,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: dark3)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icon/search.svg',
                    color: dark1,
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Cari Layanan , Makanan, & Tujuan',
                      style: regular14.copyWith(color: dark3)),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(35 / 2)),
                clipBehavior: Clip.hardEdge,
                child: Image.asset('assets/img/hanni.png'),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35 / 2),
                        color: dark4),
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      'assets/icon/goclub.svg',
                      color: blue3,
                    ),
                  ))
            ]),
          )
        ],
      ),
    );
  }
}
