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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List names = [
  "Alice Johnson",
  "Bob Smith",
  "Charlie Brown",
  "Diana Prince",
  "Ethan Hunt",
  "Fiona Gallagher",
  "George Martin",
  "Hannah Williams",
  "Ian Wright",
  "Jessica Jones",
  "Kevin Lee",
  "Laura Palmer",
  "Michael Scott",
  "Nina Dobrev",
  "Oscar Isaac",
  "Paula Abdul",
  "Quincy Adams",
  "Rachel Green",
  "Steve Rogers",
  "Tina Turner"
];
List numbers = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text(
                  names[index],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  numbers[index].toString(),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                )
              ],
            );
          },
        ));
  }
  //
//

}
