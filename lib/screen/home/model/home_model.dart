class WallpaperModel {
  int? total, totalHits;
  List<HitsModel> hits = [];

  WallpaperModel({this.total, this.totalHits, required this.hits});

  factory WallpaperModel.mapToModel(Map m1){
    List hits = m1['hits'];
    return WallpaperModel(
      total: m1['total'],
      totalHits: m1['totalHits'],
      hits:hits.map((e) => HitsModel.mapToModel(e)).toList(),);
  }
}

class HitsModel {
  int? id,
      previewWidth,
      previewHeight,
      webformatWidth,
      webformatHeight,
      imageWidth,
      imageHeight,
      imageSize,
      views,
      downloads,
      collections,
      likes,
      comments,
      user_id;
  String? pageURL, type, tags, previewURL, largeImageURL, user, userImageURL;

  HitsModel(
      {this.id,
        this.previewWidth,
        this.previewHeight,
        this.webformatWidth,
        this.webformatHeight,
        this.imageWidth,
        this.imageHeight,
        this.imageSize,
        this.views,
        this.downloads,
        this.collections,
        this.likes,
        this.comments,
        this.user_id,
        this.pageURL,
        this.type,
        this.tags,
        this.previewURL,
        this.largeImageURL,
        this.user,
        this.userImageURL});

  factory HitsModel.mapToModel(Map m1) {
    return HitsModel(
        id: m1['id'],
        previewWidth: m1['previewWidth'],
        previewHeight: m1['previewHeight'],
        webformatWidth: m1['webformatWidth'],
        webformatHeight: m1['webformatHeight'],
        imageWidth: m1['imageWidth'],
        imageHeight: m1['imageHeight'],
        imageSize: m1['imageSize'],
        views: m1['views'],
        downloads: m1['downloads'],
        collections: m1['collections'],
        likes: m1['likes'],
        comments: m1['comments'],
        user_id: m1['user_id']);
  }
}
