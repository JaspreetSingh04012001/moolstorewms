import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:moolwmsstore/Controller/userController.dart';
import 'package:moolwmsstore/Data/Model/Warehouse/addChamber.dart';
import 'package:moolwmsstore/Data/Model/Warehouse/warehouse.dart';
import 'package:moolwmsstore/Data/api/api_client.dart';
import 'package:moolwmsstore/Data/repository/warehouseRepo.dart';

class WarehouseController extends GetxController {
  final WarehouseRepo warehouseRepo;
  final ApiClient apiClient;
  WarehouseController({required this.warehouseRepo, required this.apiClient});

  List<Warehouse> ownerWarehouses = [];
  Warehouse? currentSelectedWarehouse;
  List<ChamberField> addChamberFields = [];

  getWarehouseDeatilsbyId() {
    warehouseRepo.getWarehousebyId(warehouseId: "4");
    update();
  }

  getWarehousesByUserId() async{
  await  warehouseRepo
        .getWarehousesByUserId(ownerId: Get.find<UserController>().userId)
        .then((value) {
      if (value != null) {
        ownerWarehouses = value;
        Logger().d(value);

        update();
      }
    });
  }

  getChamberFields() {
    warehouseRepo.getAddChamberFields().then((value) {
      if (value != null) {
        addChamberFields = value;
        update();
      }
    });
  }
}
