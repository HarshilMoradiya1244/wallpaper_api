import 'package:flutter/cupertino.dart';
import 'package:wallpaper_api/screen/home/model/home_model.dart';

import '../../../utils/api_helper.dart';

class HomeProvider with ChangeNotifier{

  WallpaperModel? wallpaperModel;
  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    WallpaperModel? user = await apiHelper.wallpaperApi();
    wallpaperModel = user;
    notifyListeners();
  }

}