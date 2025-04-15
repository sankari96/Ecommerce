
// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

Empty emptyFromJson(String str) => Empty.fromJson(json.decode(str));

String emptyToJson(Empty data) => json.encode(data.toJson());

class Empty {
    String? uuid;
    int? lastMigration;
    String? name;
    String? endpointPrefix;
    int? latency;
    int? port;
    String? hostname;
    List<Route>? routes;
    bool? proxyMode;
    String? proxyHost;
    bool? proxyRemovePrefix;
    TlsOptions? tlsOptions;
    bool? cors;
    List<dynamic>? headers;
    List<Header>? proxyReqHeaders;
    List<Header>? proxyResHeaders;
    List<dynamic>? data;
    List<dynamic>? folders;
    List<RootChild>? rootChildren;

    Empty({
        this.uuid,
        this.lastMigration,
        this.name,
        this.endpointPrefix,
        this.latency,
        this.port,
        this.hostname,
        this.routes,
        this.proxyMode,
        this.proxyHost,
        this.proxyRemovePrefix,
        this.tlsOptions,
        this.cors,
        this.headers,
        this.proxyReqHeaders,
        this.proxyResHeaders,
        this.data,
        this.folders,
        this.rootChildren,
    });

    factory Empty.fromJson(Map<String, dynamic> json) => Empty(
        uuid: json["uuid"],
        lastMigration: json["lastMigration"],
        name: json["name"],
        endpointPrefix: json["endpointPrefix"],
        latency: json["latency"],
        port: json["port"],
        hostname: json["hostname"],
        routes: json["routes"] == null ? [] : List<Route>.from(json["routes"]!.map((x) => Route.fromJson(x))),
        proxyMode: json["proxyMode"],
        proxyHost: json["proxyHost"],
        proxyRemovePrefix: json["proxyRemovePrefix"],
        tlsOptions: json["tlsOptions"] == null ? null : TlsOptions.fromJson(json["tlsOptions"]),
        cors: json["cors"],
        headers: json["headers"] == null ? [] : List<dynamic>.from(json["headers"]!.map((x) => x)),
        proxyReqHeaders: json["proxyReqHeaders"] == null ? [] : List<Header>.from(json["proxyReqHeaders"]!.map((x) => Header.fromJson(x))),
        proxyResHeaders: json["proxyResHeaders"] == null ? [] : List<Header>.from(json["proxyResHeaders"]!.map((x) => Header.fromJson(x))),
        data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
        folders: json["folders"] == null ? [] : List<dynamic>.from(json["folders"]!.map((x) => x)),
        rootChildren: json["rootChildren"] == null ? [] : List<RootChild>.from(json["rootChildren"]!.map((x) => RootChild.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "lastMigration": lastMigration,
        "name": name,
        "endpointPrefix": endpointPrefix,
        "latency": latency,
        "port": port,
        "hostname": hostname,
        "routes": routes == null ? [] : List<dynamic>.from(routes!.map((x) => x.toJson())),
        "proxyMode": proxyMode,
        "proxyHost": proxyHost,
        "proxyRemovePrefix": proxyRemovePrefix,
        "tlsOptions": tlsOptions?.toJson(),
        "cors": cors,
        "headers": headers == null ? [] : List<dynamic>.from(headers!.map((x) => x)),
        "proxyReqHeaders": proxyReqHeaders == null ? [] : List<dynamic>.from(proxyReqHeaders!.map((x) => x.toJson())),
        "proxyResHeaders": proxyResHeaders == null ? [] : List<dynamic>.from(proxyResHeaders!.map((x) => x.toJson())),
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
        "folders": folders == null ? [] : List<dynamic>.from(folders!.map((x) => x)),
        "rootChildren": rootChildren == null ? [] : List<dynamic>.from(rootChildren!.map((x) => x.toJson())),
    };
}

class Header {
    Key? key;
    Value? value;

    Header({
        this.key,
        this.value,
    });

    factory Header.fromJson(Map<String, dynamic> json) => Header(
        key: keyValues.map[json["key"]]!,
        value: valueValues.map[json["value"]]!,
    );

    Map<String, dynamic> toJson() => {
        "key": keyValues.reverse[key],
        "value": valueValues.reverse[value],
    };
}

enum Key {
    CONTENT_TYPE,
    EMPTY
}

final keyValues = EnumValues({
    "Content-Type": Key.CONTENT_TYPE,
    "": Key.EMPTY
});

enum Value {
    APPLICATION_JSON,
    EMPTY,
    VALUE
}

final valueValues = EnumValues({
    "application/json": Value.APPLICATION_JSON,
    "": Value.EMPTY,
    "*/*": Value.VALUE
});

class RootChild {
    RootChildType? type;
    String? uuid;

    RootChild({
        this.type,
        this.uuid,
    });

    factory RootChild.fromJson(Map<String, dynamic> json) => RootChild(
        type: rootChildTypeValues.map[json["type"]]!,
        uuid: json["uuid"],
    );

    Map<String, dynamic> toJson() => {
        "type": rootChildTypeValues.reverse[type],
        "uuid": uuid,
    };
}

enum RootChildType {
    ROUTE
}

final rootChildTypeValues = EnumValues({
    "route": RootChildType.ROUTE
});

class Route {
    String? uuid;
    String? documentation;
    Method? method;
    String? endpoint;
    List<Response>? responses;
    bool? enabled;
    dynamic responseMode;
    RouteType? type;

    Route({
        this.uuid,
        this.documentation,
        this.method,
        this.endpoint,
        this.responses,
        this.enabled,
        this.responseMode,
        this.type,
    });

    factory Route.fromJson(Map<String, dynamic> json) => Route(
        uuid: json["uuid"],
        documentation: json["documentation"],
        method: methodValues.map[json["method"]]!,
        endpoint: json["endpoint"],
        responses: json["responses"] == null ? [] : List<Response>.from(json["responses"]!.map((x) => Response.fromJson(x))),
        enabled: json["enabled"],
        responseMode: json["responseMode"],
        type: routeTypeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "documentation": documentation,
        "method": methodValues.reverse[method],
        "endpoint": endpoint,
        "responses": responses == null ? [] : List<dynamic>.from(responses!.map((x) => x.toJson())),
        "enabled": enabled,
        "responseMode": responseMode,
        "type": routeTypeValues.reverse[type],
    };
}

enum Method {
    DELETE,
    GET,
    POST,
    PUT
}

final methodValues = EnumValues({
    "delete": Method.DELETE,
    "get": Method.GET,
    "post": Method.POST,
    "put": Method.PUT
});

class Response {
    String? uuid;
    String? body;
    int? latency;
    int? statusCode;
    Label? label;
    List<Header>? headers;
    BodyType? bodyType;
    String? filePath;
    String? databucketId;
    bool? sendFileAsBody;
    List<dynamic>? rules;
    RulesOperator? rulesOperator;
    bool? disableTemplating;
    bool? fallbackTo404;
    bool? responseDefault;
    CrudKey? crudKey;

    Response({
        this.uuid,
        this.body,
        this.latency,
        this.statusCode,
        this.label,
        this.headers,
        this.bodyType,
        this.filePath,
        this.databucketId,
        this.sendFileAsBody,
        this.rules,
        this.rulesOperator,
        this.disableTemplating,
        this.fallbackTo404,
        this.responseDefault,
        this.crudKey,
    });

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        uuid: json["uuid"],
        body: json["body"],
        latency: json["latency"],
        statusCode: json["statusCode"],
        label: labelValues.map[json["label"]]!,
        headers: json["headers"] == null ? [] : List<Header>.from(json["headers"]!.map((x) => Header.fromJson(x))),
        bodyType: bodyTypeValues.map[json["bodyType"]]!,
        filePath: json["filePath"],
        databucketId: json["databucketID"],
        sendFileAsBody: json["sendFileAsBody"],
        rules: json["rules"] == null ? [] : List<dynamic>.from(json["rules"]!.map((x) => x)),
        rulesOperator: rulesOperatorValues.map[json["rulesOperator"]]!,
        disableTemplating: json["disableTemplating"],
        fallbackTo404: json["fallbackTo404"],
        responseDefault: json["default"],
        crudKey: crudKeyValues.map[json["crudKey"]]!,
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "body": body,
        "latency": latency,
        "statusCode": statusCode,
        "label": labelValues.reverse[label],
        "headers": headers == null ? [] : List<dynamic>.from(headers!.map((x) => x.toJson())),
        "bodyType": bodyTypeValues.reverse[bodyType],
        "filePath": filePath,
        "databucketID": databucketId,
        "sendFileAsBody": sendFileAsBody,
        "rules": rules == null ? [] : List<dynamic>.from(rules!.map((x) => x)),
        "rulesOperator": rulesOperatorValues.reverse[rulesOperator],
        "disableTemplating": disableTemplating,
        "fallbackTo404": fallbackTo404,
        "default": responseDefault,
        "crudKey": crudKeyValues.reverse[crudKey],
    };
}

enum BodyType {
    INLINE
}

final bodyTypeValues = EnumValues({
    "INLINE": BodyType.INLINE
});

enum CrudKey {
    ID
}

final crudKeyValues = EnumValues({
    "id": CrudKey.ID
});

enum Label {
    API_ERROR_RESPONSE,
    NO_CONTENT,
    OK
}

final labelValues = EnumValues({
    "API Error Response": Label.API_ERROR_RESPONSE,
    "No Content": Label.NO_CONTENT,
    "OK": Label.OK
});

enum RulesOperator {
    OR
}

final rulesOperatorValues = EnumValues({
    "OR": RulesOperator.OR
});

enum RouteType {
    HTTP
}

final routeTypeValues = EnumValues({
    "http": RouteType.HTTP
});

class TlsOptions {
    bool? enabled;
    String? type;
    String? pfxPath;
    String? certPath;
    String? keyPath;
    String? caPath;
    String? passphrase;

    TlsOptions({
        this.enabled,
        this.type,
        this.pfxPath,
        this.certPath,
        this.keyPath,
        this.caPath,
        this.passphrase,
    });

    factory TlsOptions.fromJson(Map<String, dynamic> json) => TlsOptions(
        enabled: json["enabled"],
        type: json["type"],
        pfxPath: json["pfxPath"],
        certPath: json["certPath"],
        keyPath: json["keyPath"],
        caPath: json["caPath"],
        passphrase: json["passphrase"],
    );

    Map<String, dynamic> toJson() => {
        "enabled": enabled,
        "type": type,
        "pfxPath": pfxPath,
        "certPath": certPath,
        "keyPath": keyPath,
        "caPath": caPath,
        "passphrase": passphrase,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
