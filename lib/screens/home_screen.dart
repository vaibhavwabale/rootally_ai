import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Start Session",
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.play_arrow_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Good Morning Jane",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 135,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Today's Progress",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            Text(
                              "50%",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearProgressIndicator(
                          minHeight: 10,
                          backgroundColor: Colors.grey[400],
                          value: 0.5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.check_box,
                              color: Colors.green,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              children: const [
                                Text("Completed"),
                                Text("2 Sessions"),
                              ],
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            const Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.blue,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Pending"),
                                Text("2 Sessions"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.blue,
                        ),
                        Dash(
                            direction: Axis.vertical,
                            length: 150,
                            dashLength: 5,
                            dashThickness: 3.0,
                            dashColor: Colors.blue),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.blue,
                        ),
                        Dash(
                            direction: Axis.vertical,
                            length: 150,
                            dashLength: 5,
                            dashThickness: 3.0,
                            dashColor: Colors.grey),
                        Icon(Icons.circle_outlined),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "Session 1",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Completed",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: Colors.blue,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ],
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
