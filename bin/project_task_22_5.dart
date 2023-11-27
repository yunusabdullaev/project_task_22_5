import 'model/data_university.dart';
import 'service/network_service.dart';

void main() async {
  String data = await NetworkService.getData(NetworkService.apiProduct);

  List<Product> listData = userListFromData(data);

  for (int i = 0; i < listData.length; i++) {
    print(listData[i].details.model);
  }
}
