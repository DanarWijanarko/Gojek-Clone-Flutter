import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/data/icons.dart';
import 'package:gojek/theme.dart';

class Gopay extends StatelessWidget {
  const Gopay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Container(
        height: 96,
        decoration: BoxDecoration(
            color: blue1, borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Line Height Left Start
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBBBBBB),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1),
                    ),
                  )
                ],
              ),
            ),
            // Line Height Left End

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  // Kotak Atas Start
                  Container(
                    height: 11,
                    width: 118,
                    decoration: const BoxDecoration(
                        color: Color(0xFF9CCDDB),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(8))),
                  ),
                  // Kotak Atas End
                  const SizedBox(
                    height: 5,
                  ),
                  // Kotak Bawah Start
                  Container(
                    height: 68,
                    width: 127,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/img/gopay.png',
                          height: 14,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Rp. 15.870',
                          style: bold16.copyWith(color: dark1),
                        ),
                        Text(
                          'Klik & Cek Riwayat',
                          style: semibold12_5.copyWith(color: green1),
                        )
                      ],
                    ),
                  )
                  // Kotak Bawah End
                ],
              ),
            ),
            ...gopayIcons.map((icon) => Flexible(
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SvgPicture.asset(
                        'assets/icon/${icon.icon}.svg',
                        color: blue1,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      icon.title,
                      style: semibold14.copyWith(color: Colors.white),
                    )
                  ],
                )))
          ],
        ),
      ),
    );
  }
}
