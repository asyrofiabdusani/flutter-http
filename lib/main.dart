// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as fetch;

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late String body;

//   @override
//   void initState() {
//     // TODO: implement initState
//     body = 'belum ada data';
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Text(
//             '${body}',
//             style: TextStyle(fontSize: 20),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           ElevatedButton(
//               onPressed: () async {
//                 var res = await fetch
//                     .get(Uri.parse('https://reqres.in/api/users?page=2'));
//                 if (res.statusCode == 200) {
//                   var data = json.decode(res.body) as Map;
//                   setState(
//                     () {
//                       body = data['data'][1]['email'].toString();
//                     },
//                   );
//                 } else {
//                   print(res.statusCode);
//                 }
//               },
//               child: Text('Get Data'))
//         ],
//       ),
//     );
//   }
// }

// =========================
// POST

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as fetch;

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Homepage(),
//     );
//   }
// }

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   TextEditingController nameC = new TextEditingController();
//   TextEditingController jobC = new TextEditingController();
//   String response = 'Belum ada response';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: [
//             TextField(
//               controller: nameC,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), labelText: 'Nama'),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextField(
//               controller: jobC,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), labelText: 'Pekerjaan'),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   var res = await fetch.post(
//                       Uri.parse('https://reqres.in/api/users'),
//                       body: {"name": nameC.text, "job": jobC.text});

//                   if (res.statusCode == 201) {
//                     var data = jsonDecode(res.body) as Map;
//                     setState(() {
//                       response = '${data['name']}';
//                     });
//                   } else {
//                     print(res.statusCode);
//                   }
//                 },
//                 child: Text('Submit')),
//             SizedBox(
//               height: 20,
//             ),
//             Divider(
//               color: Colors.black,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text('${response}'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ====================
// Update

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as fetch;

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Homepage(),
//     );
//   }
// }

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   TextEditingController nameC = new TextEditingController();
//   TextEditingController jobC = new TextEditingController();
//   String response = 'Belum ada response';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: [
//             TextField(
//               controller: nameC,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), labelText: 'Nama'),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextField(
//               controller: jobC,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), labelText: 'Pekerjaan'),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   var res = await fetch.put(
//                       Uri.parse('https://reqres.in/api/users/2'),
//                       body: {"name": nameC.text, "job": jobC.text});

//                   if (res.statusCode == 200) {
//                     var data = jsonDecode(res.body) as Map;
//                     setState(() {
//                       response = '${data['name']}';
//                     });
//                   } else {
//                     print(res.statusCode);
//                   }
//                 },
//                 child: Text('Submit')),
//             SizedBox(
//               height: 20,
//             ),
//             Divider(
//               color: Colors.black,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text('${response}'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// =====================
// Future builder

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as fetch;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  Future getUsers() async {
    try {
      var res = await fetch.put(Uri.parse('https://reqres.in/api/users/2'));
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //
      body: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading...');
          }
          return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(),
              title: Text('Test'),
              subtitle: Text('test'),
            ),
          );
        },
      ),
    );
  }
}
