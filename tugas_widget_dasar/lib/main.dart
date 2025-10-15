import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 33, 150, 243),
        ),
      ),
      home: const MyHomePage(title: 'Widget Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 33, 150, 243),
    padding: EdgeInsets.all(16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero),
    ),
  );

  void _widDemo() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GaleriFoto()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Ini adalah contoh penggunaan Container',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 81, right: 81),
              child: ElevatedButton(
                style: buttonStyle,
                onPressed: _widDemo,
                child: Center(
                  child: Text(
                    'Tombol Elevated',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 16, right: 5),
                  child: Icon(Icons.star, color: Colors.amber, size: 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Rating: 4.5',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Image.asset(
                'assets/LATIHAN.jpg',
                width: double.infinity,
                height: 273,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
        title: const Text('Galeri Foto'),
      ),
      body: Column(
        children: [
          Flexible(
            child: Image.asset(
              'assets/galerifoto.jpg',
              width: double.infinity,
              height: 273,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.all(17),
            child: Text(
              'Jalan di Barcelona',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: Icon(Icons.place, color: Colors.red, size: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Lokasi: Barcelona, Spanyol',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: Icon(Icons.calendar_month, color: Colors.blue, size: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Publikasi: 13 Agustus 2013',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: Text(
                  'Deskripsi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Text(
                  'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
