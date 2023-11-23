import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  final String imageName;

  const Description({key, required this.imageName}) : super(key: key);
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  final String src =
      "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";

  final List<RelatedFoods> relatedFoods = [
    RelatedFoods(
        foodName: "Greek",
        foodUrl:

        "https://images.pexels.com/photos/842519/pexels-photo-842519.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    RelatedFoods(
        foodName: "Sicillian",
        foodUrl:
        "https://images.pexels.com/photos/1082342/pexels-photo-1082342.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    RelatedFoods(
        foodName: "Detroit",
        foodUrl:
        "https://images.pexels.com/photos/3915857/pexels-photo-3915857.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    RelatedFoods(
        foodName: "Calzon",
        foodUrl:
        "https://images.pexels.com/photos/3731422/pexels-photo-3731422.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    RelatedFoods(
        foodName: "BBQ Pizza",
        foodUrl:
        "https://images.pexels.com/photos/1653877/pexels-photo-1653877.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretchTriggerOffset: 200,
            onStretchTrigger: () async {},
            shape: BeveledRectangleBorder(),
            stretch: true,
            pinned: true,
            forceElevated: true,
            excludeHeaderSemantics: true,
            shadowColor: Colors.white24,
            backgroundColor: Colors.white,
            elevation: 0.0,
            expandedHeight: MediaQuery.of(context).size.height * 0.75,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                constraints: BoxConstraints(),
                shape: CircleBorder(),
                fillColor: Colors.white,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              title: Text(
                "Veg Pizza",
                style: TextStyle(color: Colors.black),
              ),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "assets/pizzaa.png.jpg",
                    height: MediaQuery.of(context).size.height * 0.90,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 0.9),
                          end: Alignment(0.0, 0.1),
                          colors: <Color>[
                            Colors.white,
                            Color(0x00000000),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 850,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot ...",
                    style: TextStyle(height: 2, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Color(0xff0CCD03)),
                        Text(
                          "4.9",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.timer,
                          color: Color(0xff0CCD03),
                        ),
                        Text(
                          "10-20 Min",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          "\$ 6.50",
                          style: Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0CCD03)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Text(
                          "McDonalds",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Related Foods",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: relatedFoods
                            .map(
                              (item) => Container(
                            height: 120,
                            width: 120,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(item.foodUrl),
                                  fit: BoxFit.cover),
                            ),
                            child: Container(
                              width: 120,
                              height: 30,
                              color: Colors.black45,
                              alignment: Alignment.center,
                              child: Text(
                                item.foodName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                            .toList()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "Top Reviews",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Spacer(),
                        TextButton(onPressed: () {}, child: Text("View All"))
                      ],
                    ),
                  ),
                  ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              "assets/abc.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text("Keerthana"),
                          subtitle: Text("Review Content"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xff0CCD03),
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  color: Color(0xff0CCD03),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                  Spacer(),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color(0xff0CCD03),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Order Now",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RelatedFoods {
  String foodUrl;
  String foodName;
  RelatedFoods({
    required this.foodUrl,
    required this.foodName,
  });
}