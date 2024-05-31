import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:moolwmsstore/Hr/View/widget/commonButtons.dart';
import 'package:moolwmsstore/Hr/View/widget/commonTextField.dart';

class CreateShiftScreen extends StatefulWidget {
  const CreateShiftScreen({super.key});

  @override
  State<CreateShiftScreen> createState() => _CreateShiftScreenState();
}

class _CreateShiftScreenState extends State<CreateShiftScreen> {
  @override
  TimeOfDay _selectedTime = TimeOfDay.now();
  TimeOfDay _selectedTime2 = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context, TimeOfDay initialTime,
      void Function(TimeOfDay) onTimePicked) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (picked != null && picked != initialTime) {
      setState(() {
        onTimePicked(picked);
      });
    }
  }

  String _formatTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    final dt = DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    final format = DateFormat('HH:mm:ss');
    return format.format(dt);
  }

  final TextEditingController _shiftNameContoller = TextEditingController();

  List<String> warehouseDataList = [
    'Warehouse1',
    'Warehouse2',
    'Warehouse3',
    'Warehouse4',
    'Warehouse5',
  ];
  String? selectedWarehouse = "Warehouse1";
  List<String> shiftDataList = [
    'Shift1',
    'Shift2',
    'Shift3',
    'Shift4',
    'Shift5',
  ];
  String? selectedShift = "Shift1";
  void _showPopup(BuildContext context) {
    List<String> shiftDataList = [
      'Shift1',
      'Shift2',
      'Shift3',
      'Shift4',
      'Shift5',
    ];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GetBuilder<HRController>(builder: (hrController) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: [
                            const Text(
                              'Add New Shift',
                              style: TextStyle(
                                color: Color(0xFF5A57FF),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Shift Timing',
                              style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _selectTime(context, _selectedTime,
                                            (time) => _selectedTime = time);
                                      },
                                      child: Container(
                                        width: 56.09,
                                        height: 22,
                                        padding: const EdgeInsets.only(
                                          top: 1.87,
                                          left: 5.61,
                                          right: 11.22,
                                          bottom: 1.87,
                                        ),
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFFAF9FF),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 0.47,
                                                color: Color(0x195A57FF)),
                                            borderRadius:
                                                BorderRadius.circular(3.74),
                                          ),
                                        ),
                                        child: Text(
                                          _formatTimeOfDay(_selectedTime),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 14.96,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      width: 67.30,
                                      height: 22,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFAF9FF),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.47,
                                              color: Color(0x195A57FF)),
                                          borderRadius:
                                              BorderRadius.circular(3.74),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF5A57FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'AM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFFAF9FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'PM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFACACAC),
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _selectTime(context, _selectedTime2,
                                            (time) => _selectedTime2 = time);
                                      },
                                      child: Container(
                                        width: 56.09,
                                        height: 22,
                                        padding: const EdgeInsets.only(
                                          top: 1.87,
                                          left: 5.61,
                                          right: 11.22,
                                          bottom: 1.87,
                                        ),
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFFAF9FF),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 0.47,
                                                color: Color(0x195A57FF)),
                                            borderRadius:
                                                BorderRadius.circular(3.74),
                                          ),
                                        ),
                                        child: Text(
                                          _formatTimeOfDay(_selectedTime2),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 14.96,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      width: 67.30,
                                      height: 22,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFAF9FF),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.47,
                                              color: Color(0x195A57FF)),
                                          borderRadius:
                                              BorderRadius.circular(3.74),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFF5A57FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'AM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 29.91,
                                            height: 18.33,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFFAF9FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.87),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'PM',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFACACAC),
                                                  fontSize: 11.22,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 129,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFCEFFF1),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x7F04BF8A)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Check In',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF04BF8A),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  width: 129,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFFE7E9),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0x7FE23744)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Check Out',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE23744),
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Shift Name',
                              style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 16,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Gap(20),
                            CommanTextField(
                              labelText: 'Shift Name',
                              controller: _shiftNameContoller,
                            ),
                            const Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 128,
                                  height: 45,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFE23744),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Cancel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    hrController.addShiftDetailsRequestModel =
                                        hrController.addShiftDetailsRequestModel
                                            .copyWith(
                                                added_by: hrController.user.id,
                                                shift_name:
                                                    _shiftNameContoller.text,
                                                shift_check_in:
                                                    _formatTimeOfDay(
                                                        _selectedTime),
                                                shift_check_out:
                                                    _formatTimeOfDay(
                                                        _selectedTime2),
                                                warehouse_id: hrController
                                                        .selectedDashboardWarehouse![
                                                    "warehouse_id"]);
                                    Logger().i(hrController
                                        .addShiftDetailsRequestModel
                                        .toJson());
                                    hrController.addShiftDetails();
                                    if (hrController.addShiftDetails() ==
                                        true) {
                                      Navigator.of(context).pop();
                                    }

                                    print(hrController
                                        .addShiftDetailsRequestModel);
                                  },
                                  child: Container(
                                    width: 128,
                                    height: 45,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF019F8A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Save',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
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
                actions: const <Widget>[],
              );
            },
          );
        });
      },
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        title: 'Create Shift',
        onTap: () => _showPopup(context),
      ),
       appBar: AppBar(
          title: const Text(
            'Create Shift',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      body: GetBuilder<HRController>(builder: (hrController) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                child: GetBuilder<HRController>(builder: (hrController) {
                  return DropdownButtonFormField2<Map>(
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                          gapPadding: 0,
                          borderSide:
                              BorderSide(color: Color(0x195E57FC), width: 0.4),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: const OutlineInputBorder(
                          gapPadding: 0,
                          borderSide:
                              BorderSide(color: Color(0x195E57FC), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 0),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0x195E57FC)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    hint: const Text(
                      'All Warehouses',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    items: hrController.dashboardWarehouses.map((item) {
                      return DropdownMenuItem<Map>(
                        value: item,
                        child: Row(
                          children: [
                            Text(
                              "${item["warehouse_name"]}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Required';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (value != null) {
                        hrController.changeCreateShiftWarehouse(
                            warehouse: value);
                      }
                    },
                    onSaved: (value) {},
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.zero,
                      overlayColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    iconStyleData: IconStyleData(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ).paddingOnly(right: 10),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAF9FF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 8)),
                  );
                }),
              ),
            ),
            const Gap(20),
            const Text(
              'Shift Timing',
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
            Center(
              child: Container(
                width: 358,
                height: 138,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAF9FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x195A57FF)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Shift Name',
                            style: TextStyle(
                              color: Color(0xFF5A57FF),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              //height: 0,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Shift Start',
                            style: TextStyle(
                              color: Color(0xFF5A57FF),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              //height: 0,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Shift End',
                            style: TextStyle(
                              color: Color(0xFF5A57FF),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              //height: 0,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 12),
                    Expanded(
                        child: ListView.builder(
                            itemCount: hrController.employees.length,
                            itemBuilder: (context, i) {
                              return Container(
                                //height: 40,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFAF9FF),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0x195A57FF)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: const Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 10,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 10,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    // const Gap(4),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                            color: Color(0xFF353535),
                                            fontSize: 10,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                  ],
                                ),
                              ).paddingSymmetric(vertical: 4);
                            }))
                  ],
                ).paddingSymmetric(vertical: 16, horizontal: 12),
              ),
            ),
          ],
        );
      }),
    );
  }
}
