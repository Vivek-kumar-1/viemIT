// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:cached_network_image/cached_network_image.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({ Key? key }) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   get convert => null;
//   late List data;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildListView(),
      
//     );
//   }


//   Widget _buildListView(){
//     return ListView.builder(
//       padding: EdgeInsets.only(bottom: 1),
//       itemCount: data == null ? 0 : data.length,
//       itemBuilder: ((context, index) {
//         return _ListImage(data[index]);
//         // ListTile(
//         //   title: Text("vivek"),
//         // );
      
//     }));
//   }
// Widget _ListImage(item){
//   return Container(
//     height: 250,
//     width: MediaQuery.of(context).size.width,
//     margin: EdgeInsets.only(bottom: 1),
//     decoration: BoxDecoration(
//       color: Colors.blue,
      
//     ),
//     child:  Column(children: [
//       CachedNetworkImage(
//         imageUrl: item['urls'],
//         placeholder: (context, url) => CircularProgressIndicator(),
//         errorWidget: (context, url, error) => Icon(Icons.error),
//      ),
//       ListTile(
//           // title: Text("vivek", style: TextStyle(color: Colors.black),),
//         ),

//     ]),
//   );
// }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     data;
//     //call get json data function
//     this.getJSONData();
//   }

//    getJSONData() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");

//   // Await the http get response, then decode the json-formatted response.
//   var response = await http.get(url);
//   if (response.statusCode == 200) {
//     var jsonResponse = convert.jsonDecode(response.body);
//     setState(() {
//       data = jsonResponse;
//     });
//     return "successful";
//     // var itemCount = jsonResponse[''];
//     print('');
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
    
//   }
// }