import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink httpLink = HttpLink(uri: "http://tourism-nepal.herokuapp.com/");
final ValueNotifier<GraphQLClient> graphQlClient = ValueNotifier<GraphQLClient>(
  GraphQLClient(
    link: httpLink as Link,
    cache: OptimisticCache(
      dataIdFromObject: typenameDataIdFromObject,
    ),
  ),
);

const String attractionsList = r"""
  query GetData {
    attractionList {
      name
      id
      image
      img
      description
      latitude
      longitude
      district
      province
    }
  }
  """;

const String nearbyAttractionsList = r"""
  query GetNearby($id : Int!){
    attractionByProvince(id:$id){
      name
      id
      image
      img
      description
      latitude
      longitude
      district
      province
    }
  }
  """;

const String festivalsList = r"""
  query GetFestivals{
    festivalList{
      id
      name
      img
      image
      description
    }
  }
""";

const String cafeList = r"""
  query GetData {
    cafeList {
      name
      id
      image
      img
      description
      latitude
      longitude
      district
      province
    }
  }
  """;
const String restaurantList = r"""
  query GetData {
    restaurantList {
      name
      id
      image
      img
      description
      latitude
      longitude
      district
      province
    }
  }
  """;
const String pubList = r"""
  query GetData {
    pubList {
      name
      id
      image
      img
      description
      latitude
      longitude
      district
      province
    }
  }
  """;

const String hotelList = r"""
  query GetData {
    hotelList {
      id
      name
      img
      place
      district
      latitude
      longitude
      cost
      province
      description
      star
      url
      amenities
    }
  }
  """;