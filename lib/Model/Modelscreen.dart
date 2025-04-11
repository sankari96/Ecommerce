// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



class Welcome {
    int? id;
    String? name;
    String? address;
    String? zip;
    String? country;
    int? employeeCount;
    String? industry;
    int? marketCap;
    String? domain;
    String? logo;
    String? ceoName;

    Welcome({
        this.id,
        this.name,
        this.address,
        this.zip,
        this.country,
        this.employeeCount,
        this.industry,
        this.marketCap,
        this.domain,
        this.logo,
        this.ceoName,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        zip: json["zip"],
        country: json["country"],
        employeeCount: json["employeeCount"],
        industry: json["industry"],
        marketCap: json["marketCap"],
        domain: json["domain"],
        logo: json["logo"],
        ceoName: json["ceoName"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "zip": zip,
        "country": country,
        "employeeCount": employeeCount,
        "industry": industry,
        "marketCap": marketCap,
        "domain": domain,
        "logo": logo,
        "ceoName": ceoName,
    };
}
