import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wallpaper_api/screen/home/model/home_model.dart';

class ApiHelper {
  Future<WallpaperModel?> wallpaperApi({var lat , var lon}) async {
    String apiLink = "https://pixabay.com/api/?image_type=all&category=music&q=car&key=41720802-a47f0be69084da8210bf779c5";

    var response = await http.get(Uri.parse(apiLink),);

    if (response.statusCode == 200) {
      var jsontostring = jsonDecode(response.body);
      WallpaperModel data = WallpaperModel.mapToModel(jsontostring);
      return data;
    }
    return null;
  }
}
