import 'package:get/get.dart';

import '../http/dio_library.dart';


class CommonApi extends GetxService{

  static CommonApi get instance => Get.find<CommonApi>();

  final client = HttpClient(dioConfig: HttpConfig(baseUrl: "http://iot.yizhongyun.com/Appapi"));

  // Future<HttpResponse<DeviceStatus>> getStatus(int id) async {
  //   return await client.post("/chargingOperation",data: {"dev_id": id})..parse(DeviceStatus.fromJson);
  // }

}