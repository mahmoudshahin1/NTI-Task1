import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:newproject/constant/appicon.dart';

class ScreenEditTask extends StatefulWidget {
  ScreenEditTask({super.key});

  @override
  State<ScreenEditTask> createState() => _ScreenEditTaskState();
}

class _ScreenEditTaskState extends State<ScreenEditTask> {
  String? hinttext;

  TextEditingController dateTimeController = TextEditingController();
  Future<void> _pickDateTime(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        DateTime finalDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        String formattedDateTime =
            "${DateFormat('d MMMM, yyyy').format(finalDateTime)} - ${DateFormat('h:mm a').format(finalDateTime)}";

        dateTimeController.text = formattedDateTime;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
        centerTitle: true,
        leading: SvgPicture.asset(Appicon.IconArrowBack),
        actions: [
          Container(
            width: 85,
            height: 28,
            decoration: const BoxDecoration(
              color: Color(0xffE4312B),
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                SvgPicture.asset(Appicon.IconeDelet),
                SizedBox(
                  width: 5,
                ),
                Text('Delete'),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onSubmitted: (value) {
                      hinttext = value;
                      print(value);
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/Group 46.svg',
                          ),
                        ),
                        label: Text('     welcom'),
                        hintText: hinttext,
                        hintStyle: TextStyle()),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    onSubmitted: (value) {
                      hinttext = value;
                      print(value);
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        label: Text(
                          '  TaskName',
                          style: TextStyle(color: Colors.grey),
                        ),
                        hintText: hinttext,
                        hintStyle: TextStyle()),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    maxLines: null, // Allows unlimited lines
                    keyboardType: TextInputType.multiline,
                    onSubmitted: (value) {
                      hinttext = value;
                      print(value);
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        label: Text(
                          'Description',
                          style: TextStyle(color: Colors.grey),
                        ),
                        hintText: hinttext,
                        hintMaxLines: 5,
                        hintStyle: TextStyle()),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: dateTimeController,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Select Date & Time",
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: SvgPicture.asset(
                            Appicon.IconeCaleander,
                          ),
                        ),
                      ),
                      onTap: () => _pickDateTime(context),
                    )),
              ),
              Card(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: dateTimeController,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Select Date & Time",
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: SvgPicture.asset(
                            Appicon.IconeCaleander,
                          ),
                        ),
                      ),
                      onTap: () => _pickDateTime(context),
                    )),
              ),
              Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green),
                      minimumSize:
                          MaterialStateProperty.all(Size(double.infinity, 40)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Mark as Done',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Center(
                child: MaterialButton(
                  minWidth: double.infinity,
                  color: Colors.white, // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded borders
                    side: BorderSide(
                        color: Colors.green, width: 2), // Border color & width
                  ),
                  onPressed: () {},
                  child: Text(
                    'Update',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
