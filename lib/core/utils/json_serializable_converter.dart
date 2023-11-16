import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:offside/core/extensions/contains_json_header.dart';

class JsonSerializableConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  const JsonSerializableConverter(this.typeToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    final body = response.body as String;
    if (BodyType == bool) {
      return response.copyWith(body: (body.toLowerCase() == "true") as BodyType);
    }

    if (BodyType == double) {
      return response.copyWith(body: double.parse(body) as BodyType);
    }

    if (BodyType == dynamic) {
      return response as Response<BodyType>;
    } else if (!response.containsJsonHeader) {
      return response.copyWith(body: body as BodyType);
    }

    final factory = typeToJsonFactoryMap[InnerType];
    if (factory == null) {
      final body = response.body as String;
      throw Exception('missing JSON converter for ${BodyType.toString()}: $body');
    }

    return response.copyWith(
      body: fromJsonData<BodyType, InnerType>(response.body, factory),
    );
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);

    if (jsonMap is List) {
      return jsonMap.map((item) => jsonParser(item as Map<String, dynamic>) as InnerType).toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
