class ApiUrls {
  // static const getTripsHistory =
  //     "/get-trips?owner_id=1&owner_type=1&start=2023-03-01&end=2023-03-10";
  static String getTripsHistory(int ownerType, String id) {
    // return "/get-trips?account_id=$id&owner_type=$ownerType&owner_id=$id&=";
    // return "/get-trips?account_id=1&owner_type=1&owner_id=1";
    return "/get-trips?owner_id=$id&owner_type=$ownerType";
  }
  static String getTrips(int ownerType, int id) {
    return "/get-trips?account_id=$id&owner_type=$ownerType";
    // return "/get-trips?account_id=5&owner_type=1";
        // return "/get-trips?account_id=1&owner_type=1&owner_id=1";
  }
  static String getMyTrips(int ownerType, int id) {
    // return "/get-trips?account_id=$id&owner_type=$ownerType";
    // return "/get-trips?account_id=5&owner_type=1";
        return "/get-trips?account_id=$id&owner_type=$ownerType&owner_id=$id";
  }
  static String getTrip( int id) {
    return "/get-trip?id=$id";
    // return "/get-trips?account_id=5&owner_type=1";
        // return "/get-trips?account_id=1&owner_type=1&owner_id=1";
  }
}
