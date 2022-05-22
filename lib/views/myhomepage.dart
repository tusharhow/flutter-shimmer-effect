import 'package:flutter/material.dart';
import 'package:nimu_shimmer/nimu_shimmer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer Effect'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return NimuShimmer(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 65,
                            width: 70,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 15,
                                width: MediaQuery.of(context).size.width * 0.7,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Container(
                                height: 15,
                                width: MediaQuery.of(context).size.width * 0.15,
                                color: Colors.white,
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
