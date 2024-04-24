import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Controller/warehouseController.dart';
import 'package:moolwmsstore/Data/Model/Warehouse/warehouse.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
//import 'package:moolwmsstore/routes/approutes.gr.dart';

@RoutePage()
class WarehouseList extends StatelessWidget {
  const WarehouseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            child: Row(
              children: [
                const Spacer(),
                Chip(
                  //padding: EdgeInsets.zero,
                  labelPadding:
                      const EdgeInsets.symmetric(vertical: 6).copyWith(left: 4),
                  avatar: Image.asset(
                    "assets/icons/Add Red.png",
                    height: 30,
                  ),
                  label: const Text("Add New Warehouse"),
                  shape: const RoundedRectangleBorder(),
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 47,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 44,
                    child: const Text(
                      "S.No.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Warehouse Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "Manager",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (!context.isPhone)
                    const Expanded(
                      flex: 2,
                      child: Text(
                        "Phone No.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  if (!context.isPhone)
                    const Expanded(
                      flex: 2,
                      child: Text(
                        "Email ID",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  if (!context.isPhone)
                    const Expanded(
                      flex: 2,
                      child: Text(
                        "Timestamp",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ))
                ],
              )),
          const Gap(4),
          Expanded(
              child: GetBuilder<WarehouseController>(initState: (state) {
            Get.find<WarehouseController>().getWarehousesByUserId();
          }, builder: (warehouseController) {
            return ListView.builder(
                itemCount: warehouseController.ownerWarehouses.length,
                itemBuilder: (context, i) {
                  Warehouse warehouse = warehouseController.ownerWarehouses[i];

                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Container(
                      width: double.infinity,

                      //  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x0C000000),
                            blurRadius: 2,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              child: Text(
                                i < 9 ? "0${i + 1}" : "${i + 1}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                warehouse.warehouse_name ?? "",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                warehouse.warehouse_manager ?? "",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (!context.isPhone)
                              Expanded(
                                flex: 2,
                                child: Text(
                                  warehouse.phone ?? "",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            if (!context.isPhone)
                              Expanded(
                                flex: 2,
                                child: Text(
                                  warehouse.manage_email ?? "",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            if (!context.isPhone)
                              Expanded(
                                flex: 2,
                                child: Text(
                                  warehouse.created_at.toString() ?? "",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            IconButton(
                                onPressed: () {
                                  // context.pushRoute(const ChamberViewRoute());
                                  // context.pushRoute(ViewWarehouseDetails(
                                  //     warehouse: warehouse));
                                },
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }))
        ],
      ),
      appBar: AppBar(
        //  centerTitle: false,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(34),
        //   ),
        // ),
        backgroundColor: AppColors.scaffoldBackgroundColor,
        title: Text(
          'warehouse_list'.tr,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
