import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController expenseController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectDate = DateTime.now();
  @override
  void initState() {
    dateController.text = DateFormat("dd/MM/yyyy").format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Add Expense",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: expenseController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.payment,
                    size: 16,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              readOnly: true,
              textAlignVertical: TextAlignVertical.center,
              controller: categoryController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.list,
                    size: 16,
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) {
                            return AlertDialog(
                              title: Text("Create a Categpry"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    onTap: () {},
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: const Icon(
                                          Icons.date_range,
                                          size: 16,
                                          color: Colors.grey,
                                        ),
                                        hintText: ("Name"),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide.none)),
                                  ),
                                  SizedBox(height: 16),
                                  TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    onTap: () {},
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: const Icon(
                                          Icons.date_range,
                                          size: 16,
                                          color: Colors.grey,
                                        ),
                                        hintText: ("Icon"),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide.none)),
                                  ),
                                  SizedBox(height: 16),
                                  TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    onTap: () {},
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: const Icon(
                                          Icons.date_range,
                                          size: 16,
                                          color: Colors.grey,
                                        ),
                                        hintText: ("Color"),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide.none)),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                  hintText: ("Category"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: dateController,
              textAlignVertical: TextAlignVertical.center,
              onTap: () async {
                DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: selectDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)));
                if (newDate != null) {
                  setState(() {
                    dateController.text =
                        DateFormat('dd/MM/yyyy').format(newDate);
                    selectDate = newDate;
                  });
                }
              },
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.date_range,
                    size: 16,
                    color: Colors.grey,
                  ),
                  hintText: ("Date"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),
            SizedBox(height: 16),
            SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ))
          ],
        ),
      ),
    );
  }
}
