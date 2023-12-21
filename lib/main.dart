import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              const Spacer(),
              SizedBox(
                height: 45,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              const Spacer(),
              const SizedBox(
                width: 200,
                height: 150,
                child: SearchBar(
                  hintText: "Search",
                  hintStyle: MaterialStatePropertyAll(TextStyle(fontSize: 15)),
                  leading: Icon(Icons.search),
                  padding:
                      MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(8.0)),
                ),
              ),
              const Spacer(),
              IconButton(
                  padding: const EdgeInsets.all(4.0),
                  onPressed: () {},
                  icon: const Icon(Icons.notifications)),
              Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/kai.png"),
                        fit: BoxFit.cover)),
              ),
              const Spacer(),
            ]),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage("assets/images/branch_BG.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120),
              const Text("\t\tPastries",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const Text(
                "\t\t\t\t5 Delicicaties availible",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(width: 15),
                    RaisedGradientButton(
                        buttonText2: "Holyday Delicius",
                        buttonText: "Yule Log \n Cake",
                        imagepath2: "assets/images/mini_star.png",
                        imagepath: "assets/images/yule_cake.png"),
                    SizedBox(width: 15),
                    RaisedGradientButton(
                        buttonText2: "Holyday Delicius",
                        buttonText: "Grandmas \n Mince Pie",
                        imagepath2: "assets/images/mini_star.png",
                        imagepath: "assets/images/mince_pie.png"),
                    SizedBox(width: 15),
                    RaisedGradientButton(
                      buttonText2: "Holyday Delicius",
                      buttonText: "Christmas \n Muffin",
                      imagepath2: "assets/images/mini_star.png",
                      imagepath: "assets/images/cup_cake.png",
                    ),
                    SizedBox(width: 15),
                    RaisedGradientButton(
                        buttonText2: "Holyday Delicius",
                        buttonText: "Gingerbread \n man",
                        imagepath2: "assets/images/mini_star.png",
                        imagepath: "assets/images/gingerbread_man.png"),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              const Text("\t\tExplore Christmas",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(width: 15),
                    ExploreChristmasBtn(buttonText: "Festive \n Ornaments"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(buttonText: "Christmas \n Presents"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(buttonText: "Seasonal \n Decoration"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(buttonText: "Perfect \n Outfits"),
                    SizedBox(width: 5),
                    ExploreChristmasBtn(
                      buttonText: "Accessoire \n for NYE",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RaisedGradientButton extends StatelessWidget {
  final String buttonText2;
  final String buttonText;
  final String imagepath2;
  final String imagepath;
  const RaisedGradientButton({
    Key? key,
    required this.buttonText2,
    required this.buttonText,
    required this.imagepath2,
    required this.imagepath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: const LinearGradient(colors: <Color>[
          Color.fromARGB(195, 182, 225, 243),
          Color.fromARGB(255, 63, 89, 110)
        ]),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {},
            child: Stack(clipBehavior: Clip.none, children: [
              Positioned(
                top: 45,
                left: 20,
                child: Text(
                  buttonText2,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 9,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Text(
                  buttonText,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  //child: Image.asset(
                  //imagepath,
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                      image: AssetImage(imagepath),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 185,
                child: Container(
                  //child: Image.asset(
                  //imagepath,
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                      image: AssetImage(imagepath2),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}

class PastriesBtn extends StatelessWidget {
  final String buttonText;
  final String imagepath;
  const PastriesBtn(
      {Key? key, required this.buttonText, required this.imagepath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        backgroundColor: const Color.fromRGBO(90, 128, 164, 1),
        padding: const EdgeInsets.all(20),
      ),
      child: Column(
        children: [
          /*Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagepath),
                fit: BoxFit.cover,
                alignment: Alignment.topRight,
              ),
            ),
          ),*/
          Image.asset(
            imagepath,
            width: 160,
            height: 160,
          ),
          Text(
            buttonText,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class ExploreChristmasBtn extends StatelessWidget {
  final String buttonText;
  const ExploreChristmasBtn({
    Key? key,
    required this.buttonText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        backgroundColor: Colors.green,
        padding: const EdgeInsets.all(85),
      ),
      child: Text(
        buttonText,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
