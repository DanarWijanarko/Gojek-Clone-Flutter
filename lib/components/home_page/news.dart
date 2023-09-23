import 'package:flutter/material.dart';
import 'package:gojek/data/news.dart';
import 'package:gojek/theme.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Gopay Later Start
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/img/gopaylater.png',
                height: 14,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Lebih Mahal Pakai GoPayLater 🤩',
                style: bold16.copyWith(color: dark1),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Yuk, Belanja di Tokopedia Pakai GoPay Later dan nikmati Mahalnya~~~',
                style: regular14.copyWith(color: dark2),
              )
            ],
          ),
        ),
        // Gopay Later End

        const SizedBox(
          height: 24,
        ),

        // News Start
        ...news.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: dark4),
              ),
              child: Column(
                children: [
                  Image.asset('assets/img/${item.image}'),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: bold16.copyWith(color: dark1),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          item.description,
                          style: regular14.copyWith(color: dark2),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        // News End
      ],
    );
  }
}
