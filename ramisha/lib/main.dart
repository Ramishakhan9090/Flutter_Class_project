import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[100],
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 3, color: Colors.black26),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(100),
                  child: Image.asset(
                    'assets/images/person.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Ramisha Fariha Khan",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("ramisha@gmail.com", style: TextStyle(fontSize: 16)),
          Text("01736342300", style: TextStyle(fontSize: 16)),
          Container(height: 20),
          Text(
            "About Me:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Text(
              "I am a Computer Science and Engineering student driven by curiosity and the logic behind how technology shapes our world. From writing code to solving complex problems, I enjoy turning ideas into practical solutions. I am particularly interested in how algorithms, data structures, and software development come together to build efficient systems. Beyond academics, I am always exploring new technologies, improving my skills, and challenging myself to think critically and creatively. My goal is not just to understand how things work, but to innovate and contribute meaningfully to the evolving tech landscape.",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
