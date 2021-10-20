import 'package:flutter/material.dart';

class Slot extends StatefulWidget {
  final List slots;

  const Slot({Key key, this.slots}) : super(key: key);
  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Slots'),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0XFF95ADFE),
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: widget.slots.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0XFF27367D),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
              height: 380,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 6),
                      child: Text(
                        'Center ID              -     ' +
                            widget.slots[index]['center_id'].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 2),
                      child: Text(
                        'Center Name       -     ' +
                            widget.slots[index]['name'].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(
                      height: 6.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 2),
                      child: Text(
                        'Center Address   -    ' +
                            widget.slots[index]['address'].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 2),
                      child: Text(
                        'Age Group            -     ' +
                            widget.slots[index]['min_age_limit'].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 2),
                      child: Text(
                        'Vaccine Name     -     ' +
                            widget.slots[index]['vaccine'].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 2),
                      child: Text(
                        'Vaccine Fee         -     ' +
                            widget.slots[index]['fee_type'].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 2),
                      child: Text(
                        'Dose 1 available  -    ' +
                            widget.slots[index]['available_capacity_dose1']
                                .toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9, top: 2),
                      child: Text(
                        'Dose 2 available  -    ' +
                            widget.slots[index]['available_capacity_dose2']
                                .toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                      child: Text(
                        'Slots -  ' + widget.slots[index]['slots'].toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ]),
            );
          },
        ),
      ),
    );
  }
}
