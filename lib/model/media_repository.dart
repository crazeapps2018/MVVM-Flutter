
import 'package:flutter_demo/model/services/base_service.dart';
import 'package:flutter_demo/model/services/media_service.dart';

import 'media.dart';

class MediaRepository {
  final BaseService _mediaService = MediaService();

  Future<List<Media>> fetchMediaList(String value) async {
    dynamic response = await _mediaService.getResponse(value);
    final jsonData = response['response'] as List;
    List<Media> mediaList = jsonData.map((tagJson) => Media.fromJson(tagJson)).toList();
    return mediaList;
  }
}