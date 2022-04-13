import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  
 
fetchMovies() async {
    var url;
    url = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/photos"),
        );
    return json.decode(url.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("VIEMIT", style: TextStyle(fontWeight: FontWeight.bold, color:  Colors.black, fontSize: 22),),
          backgroundColor: Colors.amber,
          //title: SearchBox(),
          actions: [
            //cancel button
          ],
        ),
      body: Column(
        children: [
          
          Expanded(
          child: FutureBuilder(
              future: fetchMovies(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    // itemCount: snapshot.data.length,
                    itemCount: 20,
                   // padding: EdgeInsets.all(2),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                              height: 250,
                              width:  MediaQuery.of(context).size.width,
                             // alignment: Alignment.centerLeft,
                              child: Image.network(
                              // "https://via.placeholder.com/600/92c952" +
                                snapshot.data[index]['url'], 
                                fit: BoxFit.cover),
                            ),
                             SizedBox(height: 2,),
                              ],
                            )
                            //DetailScreen(),
                                                        
                          ],
                        ),
                      );
                    },
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              ),
        ),
        ],
      ),
        
         // bottomNavigationBar: BottomNavbar(),
          ),
      
          );
      
  }
}
