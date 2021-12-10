// import 'package:userswelove/constants.dart';
// import 'package:userswelove/controllers/services.dart';
// import 'package:userswelove/models/user.dart';
// import 'package:userswelove/views/components/card.dart';
import 'package:averagemode/constants.dart';
import 'package:averagemode/register.dart';
import 'package:averagemode/user.dart';
import 'package:averagemode/db.dart';
import 'package:averagemode/userCard.dart';
import 'package:flutter/material.dart';

class usersListPage extends StatefulWidget {
  const usersListPage({Key? key}) : super(key: key);

  @override
  _usersListPageState createState() => _usersListPageState();
}

class _usersListPageState extends State<usersListPage> {
  late DatabaseHandler handler;
  // late Future<List<User>> futureData;

  @override
  void initState() {
    super.initState();

    ///futureData = fetchUsers();
    handler = DatabaseHandler();
    handler.initializeDB().whenComplete(() async {
      await addUsers();
      setState(() {});
    });
  }

  Future<int> addUsers() async {
    User firstUser = User(
        name: "Peter",
        phone: 9384173829,
        lastname: "Lebanon",
        email: 'gen@kronos.dev',
        lat: 6.3485834,
        lon: 7.9485734,
        image: 'https://picsum.photos/100/300');
    User secondUser = User(
        name: "John",
        phone: 3392839420,
        lastname: "United Kingdom",
        email: 'uk@kronos.dev',
        lat: 3.3453934,
        lon: 2.3457398,
        image: 'https://picsum.photos/100/200');
    List<User> listOfUsers = [firstUser, secondUser];
    return await handler.insertUser(listOfUsers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgLightColor,
        title: const Text(
          "Users We Love",
          style: kronosH2Black,
        ),
        leading: Container(),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: handler.retrieveUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<User>? data = snapshot.data;
              return ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      background: Container(
                        color: successColor,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Icon(Icons.edit, color: Colors.white, size: 42),
                      ),
                      secondaryBackground: Container(
                        color: dangerColor,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Icon(Icons.delete_forever,
                            color: Colors.white, size: 42),
                      ),
                      child: userCard(
                        user: data[index],
                      ),
                      key: ValueKey<int>(snapshot.data![index].id!),
                      onDismissed: (DismissDirection direction) async {
                        if (direction == DismissDirection.endToStart) {
                          await handler.deleteUser(snapshot.data![index].id!);
                          setState(() {
                            snapshot.data!.remove(snapshot.data![index]);
                          });
                        } else if (direction == DismissDirection.startToEnd) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ),
                          );
                          setState(() {
                            snapshot.data!.remove(snapshot.data![index]);
                          });
                          // final bool res = await showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return AlertDialog(
                          //         content: Text("Pronto hijo"),
                          //         actions: <Widget>[
                          //           FlatButton(
                          //             child: Text(
                          //               "Cancel",
                          //               style: TextStyle(color: Colors.black),
                          //             ),
                          //             onPressed: () {
                          //               Navigator.of(context).pop();
                          //             },
                          //           ),
                          //           FlatButton(
                          //             child: Text(
                          //               "Delete",
                          //               style: TextStyle(color: Colors.red),
                          //             ),
                          //             onPressed: () {
                          //               Navigator.of(context).pop();
                          //             },
                          //           ),
                          //         ],
                          //       );
                          //     });
                        }
                      },
                    );
                  });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default show a loading spinner.
            return const CircularProgressIndicator(
              color: secondaryColor,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Register(),
            ),
          );
        },
        child: Icon(Icons.person_add_alt_1, color: Colors.white),
      ),
    );
  }
}
