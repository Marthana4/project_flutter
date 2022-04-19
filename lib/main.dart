import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      // theme: ThemeData(
      //   primarySwatch: Colors.grey,
      // ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'PRODUCTS'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            color: Colors.white,
            // The title text which will be shown on the action bar
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.lightBlue[600]),
              ),
            ),
          ),
        ),
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: EdgeInsets.all(18.0),
        //         child: Container(
        //           margin: EdgeInsets.all(20.0),
        //           width: double.infinity,
        //           height: 200,
        //           decoration: BoxDecoration(
        //             color: Colors.deepPurpleAccent,
        //             border: Border.all(),
        //           ),
        //           child: Align(
        //             alignment: Alignment.center,
        //             child: Text('Hello, Diva', style: TextStyle(fontSize: 30, color: Colors.white)),
        //           ),
        //         ),
        //       ),
        //       Center(
        //         child: IntrinsicWidth(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: <Widget>[
        //               RaisedButton(
        //                 onPressed: () {},
        //                 child: Text('Tombol Pendek'),
        //               ),
        //               RaisedButton(
        //                 onPressed: () {},
        //                 child: Text('Tombol Lebih Panjang'),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Row(
        //         children: <Widget>[
        //           Expanded(
        //             child: Icon(
        //               Icons.home,
        //               size: 70,
        //             ),
        //           ),
        //           Expanded(
        //             child: Icon(
        //               Icons.home,
        //               size: 70,
        //             ),
        //           ),
        //           Expanded(
        //             child: Icon(
        //               Icons.home,
        //               size: 70,
        //             ),
        //           ),
        //           Expanded(
        //             child: Icon(
        //               Icons.home,
        //               size: 70,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Card(
                    child: Container(
                      height: 120,
                      color: Colors.blueGrey[50],
                      child: ListTile(
                        onTap: () {},
                        leading: SizedBox(
                            height: 200.0,
                            width: 100.0, // fixed width and height
                            child: Image.asset("assets/images/tas1.jpg")),
                        title: const Text(
                          "Brand New Bag",
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: const Text(
                          "Women's bag with decorative pearl",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ));
            }));
  }
}
