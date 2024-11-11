import 'package:flutter/material.dart';
// import 'package:tutor_app/bottom_navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: const Navigation(currentIndex: 0),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/kensho.jpg"))),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Kenneth!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text('Find your best tutor.'),
                      ],
                    )),
                    const Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Featured Tutors",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("View All")
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _tutorWidget(true),
                            _tutorWidget(true),
                            _tutorWidget(true),
                            _tutorWidget(true),
                            _tutorWidget(false),
                          ],
                        ),
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _subjectWidget(true),
                          _subjectWidget(true),
                          _subjectWidget(true),
                          _subjectWidget(false),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Popular Tutors",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text("View All")
                      ],
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                        child: ListView(
                      children: [
                        _popularTutorsWidget(),
                        const SizedBox(height: 10),
                        _popularTutorsWidget(),
                        const SizedBox(height: 10),
                        _popularTutorsWidget(),
                        const SizedBox(height: 10),
                        _popularTutorsWidget(),
                        const SizedBox(height: 10),
                        _popularTutorsWidget(),
                        const SizedBox(height: 10),
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _popularTutorsWidget() {
    return Container(
      width: double.maxFinite,
      height: 140,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color.fromARGB(198, 192, 192, 192),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mark Servando",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("blabblalbl"),
                Text("bkbkkakka"),
                Text("abkabkakabka"),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.bookmark_border_outlined,
              ),
              const Spacer(
                flex: 1,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.white),
                  child: const Text("Book Now"))
            ],
          )
        ],
      ),
    );
  }

  Container _tutorWidget(bool hasMargin) {
    return Container(
      width: 275.0,
      margin: EdgeInsets.only(right: hasMargin ? 20 : 0),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color.fromARGB(198, 192, 192, 192),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white),
          ),
          const SizedBox(width: 10),
          const Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mark Servando",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text("blabblalbl", style: TextStyle(fontSize: 12)),
              Text("bkbkkakka", style: TextStyle(fontSize: 12)),
              Text("abkabkakabka", style: TextStyle(fontSize: 12)),
              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 15,
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

Column _subjectWidget(bool hasMargin) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 75,
        height: 75,
        margin: EdgeInsets.only(right: hasMargin ? 20 : 0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(198, 192, 192, 192),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      const Padding(padding: EdgeInsets.only(left: 10), child: Text("Science"))
    ],
  );
}
