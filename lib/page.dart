import 'package:flutter/material.dart';

import 'data_model.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<DataModel> list = [
    DataModel(
        discription:
            'Ann Rozenfeld: Tips & tricks how to avoid depression from remote work',
        avatars: [
          'https://source.unsplash.com/random/1',
          'https://source.unsplash.com/random/2',
          'https://source.unsplash.com/random/3',
          'https://source.unsplash.com/random/4',
        ],
        color: const Color(0xff7BE95A),
        time: '2 hours ago',
        name: "Christina Smith",
        price: 26,
        status: 1),
    DataModel(
        discription:
            'Christmas corporate party discussion for all departments!🎄',
        avatars: [
          'https://source.unsplash.com/random/6',
          'https://source.unsplash.com/random/7',
          'https://source.unsplash.com/random/8',
          'https://source.unsplash.com/random/9',
        ],
        color: const Color(0xffF2994A),
        time: '2 hours ago',
        name: "Christina Smith",
        price: 26,
        status: 2),
    DataModel(
        discription: 'Smokers\' Club',
        avatars: [
          'https://source.unsplash.com/random/10',
          'https://source.unsplash.com/random/11',
          'https://source.unsplash.com/random/12',
          'https://source.unsplash.com/random/12',
        ],
        color: const Color(0xffEB5757),
        time: '2 hours ago',
        name: "Christina Smith",
        price: 26,
        status: 3),
    DataModel(
        discription:
            'Christmas corporate party discussion for all departments!🎄',
        avatars: [
          'https://source.unsplash.com/random/10',
          'https://source.unsplash.com/random/11',
          'https://source.unsplash.com/random/12',
          'https://source.unsplash.com/random/12',
        ],
        color: const Color(0xff9B51E0),
        time: '2 hours ago',
        name: "Christina Smith",
        price: 26,
        status: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEDF3F3),
        body: SafeArea(
          child: Column(children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  height: 48,
                  width: 163,
                  child: const Image(
                    image: AssetImage('assets/Group1.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 100),
                  height: 19,
                  width: 19,
                  child: const Image(
                    image: AssetImage('assets/Search.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 31),
                  height: 19,
                  width: 19,
                  child: const Image(
                    image: AssetImage('assets/Plus.png'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (BuildContext context, index) => Container(
                  padding: const EdgeInsets.only(left: 24, top: 20),
                  margin: const EdgeInsets.only(top: 19),
                  height: 158,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                color: list[index].color,
                              ),
                              child: const Text('30 min'),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 11),
                              child: const Text(
                                'Mon, Dec 20, 01:00 AM',
                              ),
                            ),
                          ],
                        ),
                        Text(
                          list[index].discription,
                          style: const TextStyle(
                              color: Color(0xff273131),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 3,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, i) => Container(
                                  height: 36,
                                  width: 36,
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        list[index].avatars[i],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          list[index].status == 1
                              ? GestureDetector(
                                  onTap: () {
                                    list[index].status = 3;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    margin: const EdgeInsets.only(left: 126),
                                    child: Stack(children: [
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(11),
                                            ),
                                            border: Border.all(
                                              width: 1,
                                              color: const Color(0xffEDF3F3),
                                            ),
                                          ),
                                          child: const Text('Join'),
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        top: 4,
                                        child: Container(
                                          height: 16,
                                          width: 16,
                                          child: const Image(
                                            image:
                                                AssetImage('assets/Vector.png'),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                )
                              : list[index].status == 2
                                  ? GestureDetector(
                                      onTap: () {
                                        list[index].status = 1;
                                        setState(() {});
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 126, top: 11),
                                        height: 37,
                                        width: 81,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11),
                                          ),
                                          color:
                                              Color.fromARGB(134, 91, 255, 236),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Active',
                                            style: TextStyle(
                                                color: Color(0xff18BCA8),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    )
                                  : list[index].status == 3
                                      ? GestureDetector(
                                          onTap: () {
                                            for (int a = 0;
                                                a < list.length;
                                                a++) {
                                              if (list[a].status == 2) {
                                                list[a].status = 3;
                                              }
                                            }
                                            list[index].status = 2;
                                            setState(() {});
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 126),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 25,
                                              vertical: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffEDF3F3),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(11),
                                              ),
                                              border: Border.all(
                                                width: 1,
                                                color: const Color(0xffEDF3F3),
                                              ),
                                            ),
                                            child: const Text('Join'),
                                          ),
                                        )
                                      : Container()
                        ])
                      ]),
                ),
              ),
            ),
          ]),
        ));
  }
}
