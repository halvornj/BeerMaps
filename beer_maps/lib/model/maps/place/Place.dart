import 'dart:core';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps/google_maps_places.dart';

/// name : "places/ChIJWTGPjmaAhYARgXpiJ-aACYM"
/// id : "ChIJWTGPjmaAhYARgXpiJ-aACYM"
/// types : ["seafood_restaurant","bar","restaurant","point_of_interest","food","establishment"]
/// nationalPhoneNumber : "(415) 391-7117"
/// internationalPhoneNumber : "+1 415-391-7117"
/// formattedAddress : "Ferry Building, #11, San Francisco, CA 94111, USA"
/// addressComponents : [{"longText":"San Francisco","shortText":"SF","types":["locality","political"],"languageCode":"en"},{"longText":"Embarcadero","shortText":"Embarcadero","types":["neighborhood","political"],"languageCode":"en"},{"longText":"San Francisco County","shortText":"San Francisco County","types":["administrative_area_level_2","political"],"languageCode":"en"},{"longText":"California","shortText":"CA","types":["administrative_area_level_1","political"],"languageCode":"en"},{"longText":"United States","shortText":"US","types":["country","political"],"languageCode":"en"},{"longText":"94111","shortText":"94111","types":["postal_code"],"languageCode":"en-US"}]
/// plusCode : {"globalCode":"849VQJW4+9J","compoundCode":"QJW4+9J Embarcadero, San Francisco, CA, USA"}
/// location : {"latitude":37.7959647,"longitude":-122.3934171}
/// viewport : {"low":{"latitude":37.7942496697085,"longitude":-122.39501388029147},"high":{"latitude":37.7969476302915,"longitude":-122.39231591970849}}
/// rating : 4.6
/// googleMapsUri : "https://maps.google.com/?cid=9442219819750554241"
/// websiteUri : "https://hogislandoysters.com/"
/// regularOpeningHours : {"openNow":true,"periods":[{"open":{"day":0,"hour":11,"minute":0},"close":{"day":0,"hour":20,"minute":0}},{"open":{"day":1,"hour":11,"minute":30},"close":{"day":1,"hour":20,"minute":0}},{"open":{"day":2,"hour":11,"minute":30},"close":{"day":2,"hour":20,"minute":0}},{"open":{"day":3,"hour":11,"minute":30},"close":{"day":3,"hour":20,"minute":0}},{"open":{"day":4,"hour":11,"minute":30},"close":{"day":4,"hour":20,"minute":0}},{"open":{"day":5,"hour":11,"minute":30},"close":{"day":5,"hour":20,"minute":0}},{"open":{"day":6,"hour":11,"minute":0},"close":{"day":6,"hour":20,"minute":0}}],"weekdayDescriptions":["Monday: 11:30 AM – 8:00 PM","Tuesday: 11:30 AM – 8:00 PM","Wednesday: 11:30 AM – 8:00 PM","Thursday: 11:30 AM – 8:00 PM","Friday: 11:30 AM – 8:00 PM","Saturday: 11:00 AM – 8:00 PM","Sunday: 11:00 AM – 8:00 PM"]}
/// utcOffsetMinutes : -420
/// adrFormatAddress : "Ferry Building, #11, <span class=\"locality\">San Francisco</span>, <span class=\"region\">CA</span> <span class=\"postal-code\">94111</span>, <span class=\"country-name\">USA</span>"
/// businessStatus : "OPERATIONAL"
/// priceLevel : "PRICE_LEVEL_MODERATE"
/// userRatingCount : 3117
/// iconMaskBaseUri : "https://maps.gstatic.com/mapfiles/place_api/icons/v2/restaurant_pinlet"
/// iconBackgroundColor : "#FF9E67"
/// displayName : {"text":"Hog Island Oyster Co.","languageCode":"en"}
/// primaryTypeDisplayName : {"text":"Restaurant","languageCode":"en-US"}
/// takeout : true
/// delivery : true
/// dineIn : true
/// reservable : false
/// servesBreakfast : false
/// servesLunch : true
/// servesDinner : true
/// servesBeer : true
/// servesWine : true
/// servesBrunch : false
/// servesVegetarianFood : false
/// currentOpeningHours : {"openNow":true,"periods":[{"open":{"day":0,"hour":11,"minute":0,"date":{"year":2024,"month":6,"day":16}},"close":{"day":0,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":16}}},{"open":{"day":1,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":17}},"close":{"day":1,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":17}}},{"open":{"day":2,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":18}},"close":{"day":2,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":18}}},{"open":{"day":3,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":19}},"close":{"day":3,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":19}}},{"open":{"day":4,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":20}},"close":{"day":4,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":20}}},{"open":{"day":5,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":21}},"close":{"day":5,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":21}}},{"open":{"day":6,"hour":11,"minute":0,"date":{"year":2024,"month":6,"day":15}},"close":{"day":6,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":15}}}],"weekdayDescriptions":["Monday: 11:30 AM – 8:00 PM","Tuesday: 11:30 AM – 8:00 PM","Wednesday: 11:30 AM – 8:00 PM","Thursday: 11:30 AM – 8:00 PM","Friday: 11:30 AM – 8:00 PM","Saturday: 11:00 AM – 8:00 PM","Sunday: 11:00 AM – 8:00 PM"]}
/// primaryType : "restaurant"
/// shortFormattedAddress : "Ferry Building, #11, San Francisco"
/// editorialSummary : {"text":"Contemporary waterside seafood eatery serving local oysters and clams, plus craft cocktails.","languageCode":"en"}
/// reviews : [{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/reviews/ChdDSUhNMG9nS0VJQ0FnSUNkcUlQaV9nRRAB","relativePublishTimeDescription":"4 months ago","rating":5,"text":{"text":"I popped into this restaurant on a weekday and snagged a table right away. While parking in the area can be pricey ($8/hour!), a quick 7-8 minute walk northeast leads to free street parking and gives you a chance to explore the neighborhood.\n\nThe food was fantastic! I started with the Hog Island oysters, which were incredibly fresh and bursting with flavor, without a hint of fishiness. Next, I tried the garlic grilled oysters, cooked to perfection - juicy, creamy, and infused with garlicky goodness. The old bay fries were another highlight - crispy on the outside, fluffy on the inside, and seasoned with a hint of sweetness. Even the ketchup impressed me - tangy and refreshing, it complemented the fries perfectly.\n\nThe clam chowder wasn't your typical version. Instead of small bits, it showcased plump whole clams in a slightly thinner, yet still creamy broth that avoided being overly milky.\n\nThe service was friendly and attentive, ensuring a smooth and enjoyable dining experience. Plus, considering the high quality of the food, the prices were very reasonable. This hidden gem, even amidst the tourist crowds, offers excellent value and deserves a visit!","languageCode":"en"},"originalText":{"text":"I popped into this restaurant on a weekday and snagged a table right away. While parking in the area can be pricey ($8/hour!), a quick 7-8 minute walk northeast leads to free street parking and gives you a chance to explore the neighborhood.\n\nThe food was fantastic! I started with the Hog Island oysters, which were incredibly fresh and bursting with flavor, without a hint of fishiness. Next, I tried the garlic grilled oysters, cooked to perfection - juicy, creamy, and infused with garlicky goodness. The old bay fries were another highlight - crispy on the outside, fluffy on the inside, and seasoned with a hint of sweetness. Even the ketchup impressed me - tangy and refreshing, it complemented the fries perfectly.\n\nThe clam chowder wasn't your typical version. Instead of small bits, it showcased plump whole clams in a slightly thinner, yet still creamy broth that avoided being overly milky.\n\nThe service was friendly and attentive, ensuring a smooth and enjoyable dining experience. Plus, considering the high quality of the food, the prices were very reasonable. This hidden gem, even amidst the tourist crowds, offers excellent value and deserves a visit!","languageCode":"en"},"authorAttribution":{"displayName":"Jason Y","uri":"https://www.google.com/maps/contrib/105363602600441080746/reviews","photoUri":"https://lh3.googleusercontent.com/a-/ALV-UjVeabFE2PNTvdkdAnBzDW9b3MnMm66qyJq3k3Quj0iQBzzE2nNGEQ=s128-c0x00000000-cc-rp-mo-ba4"},"publishTime":"2024-02-11T00:03:05Z"},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/reviews/ChdDSUhNMG9nS0VJQ0FnSURqNkxMMDNBRRAB","relativePublishTimeDescription":"a month ago","rating":5,"text":{"text":"The service was great and super friendly. Clam chowder is awesome. Nice place to sit outside near the pier and have some oysters and drinks. The squid salad was a little bland, I think if they included more olives in it the saltiness would go a long way. Not enough of an issue for me to give less than 6 stars.","languageCode":"en"},"originalText":{"text":"The service was great and super friendly. Clam chowder is awesome. Nice place to sit outside near the pier and have some oysters and drinks. The squid salad was a little bland, I think if they included more olives in it the saltiness would go a long way. Not enough of an issue for me to give less than 6 stars.","languageCode":"en"},"authorAttribution":{"displayName":"K Johnson","uri":"https://www.google.com/maps/contrib/115837662309988442990/reviews","photoUri":"https://lh3.googleusercontent.com/a/ACg8ocKEt_fQASkHqPlTcx-bKRmByMf5MHtB9orpC8g-Bnc8lAdVTw=s128-c0x00000000-cc-rp-mo-ba5"},"publishTime":"2024-04-28T21:29:13Z"},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/reviews/ChdDSUhNMG9nS0VJQ0FnSUN6X3F2aHpBRRAB","relativePublishTimeDescription":"a week ago","rating":5,"text":{"text":"Being from New England its funny to say that one of my Top 3 clam chowders is outside of the northeast, nevermind San Francisco but here it is.  Hog Island is on the list of things I miss most about San Francisco after moving.  The food is perfect, the view is beautiful, and the service is great.  Thank you and don't change a thing.\nHighly recommend!","languageCode":"en"},"originalText":{"text":"Being from New England its funny to say that one of my Top 3 clam chowders is outside of the northeast, nevermind San Francisco but here it is.  Hog Island is on the list of things I miss most about San Francisco after moving.  The food is perfect, the view is beautiful, and the service is great.  Thank you and don't change a thing.\nHighly recommend!","languageCode":"en"},"authorAttribution":{"displayName":"Chip Klang","uri":"https://www.google.com/maps/contrib/103162193282928397381/reviews","photoUri":"https://lh3.googleusercontent.com/a-/ALV-UjUi4QlnxvZw0jf9lbTbpxEQ5Oir4-eKmd_ETNjiU_eLK02aSH45=s128-c0x00000000-cc-rp-mo-ba3"},"publishTime":"2024-06-02T13:01:14Z"},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/reviews/ChdDSUhNMG9nS0VJQ0FnSURUOExMdHp3RRAB","relativePublishTimeDescription":"3 weeks ago","rating":5,"text":{"text":"The fresh oysters were great! We visited around 6pm which is usually pretty busy, but since we sat at the bar the service was pretty quick. However, we did need to remind the server about some menu items that were not delivered. Regardless, the food quality was good. We also shared some steamed mussels, a bread basket, and some Bay seasoned french fries which were nice and crisp. Overall it was a good experience.","languageCode":"en"},"originalText":{"text":"The fresh oysters were great! We visited around 6pm which is usually pretty busy, but since we sat at the bar the service was pretty quick. However, we did need to remind the server about some menu items that were not delivered. Regardless, the food quality was good. We also shared some steamed mussels, a bread basket, and some Bay seasoned french fries which were nice and crisp. Overall it was a good experience.","languageCode":"en"},"authorAttribution":{"displayName":"Stella M","uri":"https://www.google.com/maps/contrib/111421867498389934526/reviews","photoUri":"https://lh3.googleusercontent.com/a-/ALV-UjVbNDOogNPf7_2k1Yy4BzLrydeVbXhhq-j-i9YtLCqntgc7UezUYA=s128-c0x00000000-cc-rp-mo-ba4"},"publishTime":"2024-05-21T18:22:48Z"},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/reviews/ChdDSUhNMG9nS0VJQ0FnSURkMzdPai13RRAB","relativePublishTimeDescription":"3 months ago","rating":5,"text":{"text":"Love eating out here! They seat you once everybody in your group presents. Their famous sweet water oysters and the creamy clam chowder are the must. The chowder here differs from other popular chowder places which I like, not thick. Loved the mussels with a hint of mustard. The cod was great too, plated so beautifully and tasted wonderfully. Great service as well.","languageCode":"en"},"originalText":{"text":"Love eating out here! They seat you once everybody in your group presents. Their famous sweet water oysters and the creamy clam chowder are the must. The chowder here differs from other popular chowder places which I like, not thick. Loved the mussels with a hint of mustard. The cod was great too, plated so beautifully and tasted wonderfully. Great service as well.","languageCode":"en"},"authorAttribution":{"displayName":"goim kim","uri":"https://www.google.com/maps/contrib/113830201131198074944/reviews","photoUri":"https://lh3.googleusercontent.com/a-/ALV-UjXUI4UaBBe0geqYGYuqWu2gScvGvgB6leGwVNdYij893C8g_nnf=s128-c0x00000000-cc-rp-mo-ba4"},"publishTime":"2024-02-28T22:15:03Z"}]
/// photos : [{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXWwixVg5wk_iy2gbmp-LN9b3OziTmcJRX4J-ScqdiJ37IoKRQPOVHVahMxp_yTmKiYNioE84kq_N8ApnKa6nzR2onx7tZte_McMTYrwl68cFUrA-qlL6C10HNvANiRwiDuX-SZv6dwnO8duG8HUlktkioj46_B-utS1","widthPx":5720,"heightPx":3718,"authorAttributions":[{"displayName":"Hog Island Oyster Co.","uri":"//maps.google.com/maps/contrib/111592707657525468627","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjX6rRI9Nw_7_0LqJM9I39LlMYLpk0MhaB4jZKXUFnpLT28rrcI=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXV3v7HRV9QoTyV00KZfpJdbYJmpJPI3I9NJSBM4CvXf2hvLb_j-E-kW5TBeYKTGALGPJlCMw377-WrROTOK6LQfJp_yGys4HwizbHkFVuXzkKGzbyh8L14nbim3rlmq52W9rkATg875sZaIPBTitD_r7tLwz_OzcRgX","widthPx":2400,"heightPx":3600,"authorAttributions":[{"displayName":"Hog Island Oyster Co.","uri":"//maps.google.com/maps/contrib/111592707657525468627","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjX6rRI9Nw_7_0LqJM9I39LlMYLpk0MhaB4jZKXUFnpLT28rrcI=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXVItslA9t-qHhhyx8a9bpYA8iDMqjp-AXrCeg4H5dE0St4MrhhuXMtnpjUy3Kxifpoeq-h3_1nRGQQTxpRFO9KaBxScKUTu9BNMXiKQ5yNuVSoO17N3xvtyZKb5rNoBSVzxnFRxQFeUBCNg61UKqtyFXrkYeHRGW2vr","widthPx":4284,"heightPx":5712,"authorAttributions":[{"displayName":"Winnie Tsay","uri":"//maps.google.com/maps/contrib/110820735970740610560","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjVGkiu-2tqkicMJG5oCqX3djE3uprtvxmXZbT-3efy8U4rATW4VBA=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXVv9OZXTRvE5rblc-djZkSdnlSnxqK7OFGXyHEoooYEOcBYHk4MCnWera4GtYcvgUTmvh5zEz8GlntV10N8H-8bt-Y7boZ27S3QKNi38o66-o-tHyaHZqfWBy32vHM5yXakkVNlr9q186HEXrA4xRtikxBrCE75mTQG","widthPx":4032,"heightPx":3024,"authorAttributions":[{"displayName":"Cary Yen","uri":"//maps.google.com/maps/contrib/114004157066136960873","photoUri":"//lh3.googleusercontent.com/a/ACg8ocKLUWz_bHMaS3elsHC4Hye5ZPNDHT5E_4A8ApPT9mFTkc5igA=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXVQM_cy4EVf4_Tmh2Dejm4ws70P0bL_KFkEwBeyaIgckbjB2GqbyXHTPWH2n3vbJKbqynr-n0pbIwtmmorKqVS2BbVyiESue58UoxIjF-t8FSnJmMwbarf9Vxfma9ve4W-gueFLeDpXEvTTTsfFhVhFo8g0e7uoEx9H","widthPx":1440,"heightPx":1440,"authorAttributions":[{"displayName":"Chip Klang","uri":"//maps.google.com/maps/contrib/103162193282928397381","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjUi4QlnxvZw0jf9lbTbpxEQ5Oir4-eKmd_ETNjiU_eLK02aSH45=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXXYPppTB0IdmQZmw_gjpVIBru1AxdzXOotUZyugwh03P2y9Eca8uamR7w9yr2aUZ7szDEBEAiXNvKvCTWpKd61BbH9PTSIgfx5ezmi4yvtG__ki-lRH3Y-pJyOWn_c5qgDZQETkddT0gWkiWMQvA1TOqK5eA67qYarb","widthPx":4032,"heightPx":2268,"authorAttributions":[{"displayName":"BuzzKill JFK","uri":"//maps.google.com/maps/contrib/104114765888822450122","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjW_hqUF1vlus0rc8-JjGDrYrUps0_jB8Bg3HFT5ef-c_ltobcmL=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXXplkFIIXvAABcLBVRVbjJoOTkxzL9fpHrsagfP6PBnsnvjsfaAueBEgSo_LcA4iMuySYd_6qHxB7Ids4yaqot4tNcXk7CEv-qp6WdqP03Ul5AezL9VBWPxI4dKTuFvTNBI0-H9kmob-KEottWAVYPsA9TkW_qMwh1n","widthPx":4032,"heightPx":3024,"authorAttributions":[{"displayName":"劉三國","uri":"//maps.google.com/maps/contrib/113221391135788817630","photoUri":"//lh3.googleusercontent.com/a/ACg8ocI43RZ11RiIFl0Y5NBYLJ1C0pOFY_O8jkvWrZCNav3rGGUY4g=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXV9cZGU-BSP2oc0t6gO2qZjhJLfWLhf7X7CG39STwO_Pp-A18h5jJg8NQvtIX7Ctg5E4UAoSGPbXMZLP7dEjujl39AJ4H38Ib_73KVnN2L2txEHvN5USSYL5eon436NvbuUP0hOF41CG0psHDyc5QIphPXejV0sPKIs","widthPx":2992,"heightPx":2992,"authorAttributions":[{"displayName":"Marilynn Corza","uri":"//maps.google.com/maps/contrib/116996194829383312074","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjX6UHCj1uHeRiqWK4_k0GJXJoeA2_DzbSGkYcelupsSWWW1cMDq=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXVdweJ5ks9KiTno0u3IXA42_4XZg0fMxaWr2c6_sta3BvfcY2WMz-f7FpHIHlt6ZF6Bq_eHyLHjO2cR1IM3b1Z1gsd1vXoRtT77CkhgVwQ0Ndd0ENurayo3Vt-xvsQXCMp29n6CCeIN1bavt212rF9PKmNdzSJ5aw-X","widthPx":4284,"heightPx":5712,"authorAttributions":[{"displayName":"Winnie Tsay","uri":"//maps.google.com/maps/contrib/110820735970740610560","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjVGkiu-2tqkicMJG5oCqX3djE3uprtvxmXZbT-3efy8U4rATW4VBA=s100-p-k-no-mo"}]},{"name":"places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXWJMrvD9QK-cpdbu6qqIHUglRTP3niaAg4VrzU_92Di1Y7bMPn9ZWwzoxDZPGNVrr1f_85wjPWJvIA5uuBSa9O4PB92HD7TJG4SybilHaa_ygPOLTHB9LF8Ox-rV80_Q1OqbPoMxX4Gv3M01l_e5pG1WUJOnfJSpajj","widthPx":4080,"heightPx":3072,"authorAttributions":[{"displayName":"Francesco Rattin","uri":"//maps.google.com/maps/contrib/115490066680393926568","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjWG3Kp2-agcLMvEhl5YIKNmU3IsCnPGzY5VgZ1zeWS0sk_i-Tqj=s100-p-k-no-mo"}]}]
/// outdoorSeating : true
/// liveMusic : false
/// menuForChildren : false
/// servesCocktails : true
/// servesDessert : false
/// servesCoffee : true
/// restroom : true
/// goodForGroups : true
/// goodForWatchingSports : false
/// paymentOptions : {"acceptsCreditCards":true,"acceptsDebitCards":true,"acceptsCashOnly":false,"acceptsNfc":true}
/// parkingOptions : {"paidParkingLot":true,"paidStreetParking":true,"valetParking":false}
/// accessibilityOptions : {"wheelchairAccessibleEntrance":true,"wheelchairAccessibleRestroom":true,"wheelchairAccessibleSeating":true}
/// generativeSummary : {"overview":{"text":"Ferry Building seafood counter featuring raw and grilled oysters, mussels, clam chowder and more.","languageCode":"en-US"}}

class Place {
  Place({
    required this.name,
    required this.id,
    required this.types,
    required this.internationalPhoneNumber,
    required this.formattedAddress,
    required this.addressComponents,
    required this.location,
    required this.rating,
    required this.googleMapsUri,
    required this.websiteUri,
    required this.regularOpeningHours,
    required this.utcOffsetMinutes,
    required this.adrFormatAddress,
    required this.businessStatus,
    required this.priceLevel,
    required this.userRatingCount,
    required this.iconMaskBaseUri,
    required this.iconBackgroundColor,
    required this.displayName,
    required this.primaryTypeDisplayName,
    required this.servesBeer,
    required this.servesWine,
    required this.currentOpeningHours,
    required this.primaryType,
    required this.shortFormattedAddress,
    required this.editorialSummary,
    required this.photos,
    required this.outdoorSeating,
    required this.liveMusic,
    required this.servesCocktails,
    required this.goodForWatchingSports,
    required this.paymentOptions,
    required this.accessibilityOptions,
    required this.generativeSummary,});

  final String name;
  final String id;
  final List<String> types;
  final String internationalPhoneNumber;
  final String formattedAddress;
  final List<AddressComponents> addressComponents;
  final Location location;
  final num rating;
  final String googleMapsUri;
  final String websiteUri;
  final RegularOpeningHours regularOpeningHours;
  final num utcOffsetMinutes;
  final String adrFormatAddress;
  final String businessStatus;
  final String priceLevel;
  final num userRatingCount;
  final String iconMaskBaseUri;
  final String iconBackgroundColor;
  final DisplayName displayName;
  final PrimaryTypeDisplayName primaryTypeDisplayName;
  final bool servesBeer;
  final bool servesWine;
  final CurrentOpeningHours currentOpeningHours;
  final String primaryType;
  final String shortFormattedAddress;
  final EditorialSummary editorialSummary;
  final List<Photos> photos;
  final bool outdoorSeating;
  final bool liveMusic;
  final bool servesCocktails;
  final bool goodForWatchingSports;
  final PaymentOptions paymentOptions;
  final AccessibilityOptions accessibilityOptions;
  final GenerativeSummary generativeSummary;

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      name: json['name'],
      id: json['id'],
      types: json['types'] != null ? json['types'].cast<String>() : [],
      internationalPhoneNumber: json['internationalPhoneNumber'],
      formattedAddress: json['formattedAddress'],
      addressComponents: json['addressComponents'] != null ? (json['addressComponents'] as List).map((i) => AddressComponents.fromJson(i)).toList() : [],
      location: Location.fromJson(json['location']),
      rating: json['rating'],
      googleMapsUri: json['googleMapsUri'],
      websiteUri: json['websiteUri'],
      regularOpeningHours: RegularOpeningHours.fromJson(json['regularOpeningHours']),
      utcOffsetMinutes: json['utcOffsetMinutes'],
      adrFormatAddress: json['adrFormatAddress'],
      businessStatus: json['businessStatus'],
      priceLevel: json['priceLevel'],
      userRatingCount: json['userRatingCount'],
      iconMaskBaseUri: json['iconMaskBaseUri'],
      iconBackgroundColor: json['iconBackgroundColor'],
      displayName: DisplayName.fromJson(json['displayName']),
      primaryTypeDisplayName: PrimaryTypeDisplayName.fromJson(json['primaryTypeDisplayName']),
      servesBeer: json['servesBeer'],
      servesWine: json['servesWine'],
      currentOpeningHours: CurrentOpeningHours.fromJson(json['currentOpeningHours']),
      primaryType: json['primaryType'],
      shortFormattedAddress: json['shortFormattedAddress'],
      editorialSummary: EditorialSummary.fromJson(json['editorialSummary']),
      photos: json['photos'] != null ? (json['photos'] as List).map((i) => Photos.fromJson(i)).toList() : [],
      outdoorSeating: json['outdoorSeating'],
      liveMusic: json['liveMusic'],
      servesCocktails: json['servesCocktails'],
      goodForWatchingSports: json['goodForWatchingSports'],
      paymentOptions: PaymentOptions.fromJson(json['paymentOptions']),
      accessibilityOptions: AccessibilityOptions.fromJson(json['accessibilityOptions']),
      generativeSummary: GenerativeSummary.fromJson(json['generativeSummary']),
    );
  }
}



/// overview : {"text":"Ferry Building seafood counter featuring raw and grilled oysters, mussels, clam chowder and more.","languageCode":"en-US"}

class GenerativeSummary {
  GenerativeSummary({
      required this.overview,});
    final Overview overview;

    factory GenerativeSummary.fromJson(Map<String, dynamic> json) {
    return GenerativeSummary(
      overview: Overview.fromJson(json['overview']),
    );
    }
}

/// text : "Ferry Building seafood counter featuring raw and grilled oysters, mussels, clam chowder and more."
/// languageCode : "en-US"

class Overview {
  Overview({
      required this.text,
      required this.languageCode,});
    final String text;
    final String languageCode;

  factory Overview.fromJson(Map<String, dynamic> json) {
    return Overview(
      text: json['text'],
      languageCode: json['languageCode'],
    );
  }

}

/// wheelchairAccessibleEntrance : true
/// wheelchairAccessibleRestroom : true
/// wheelchairAccessibleSeating : true
/*
class AccessibilityOptions {
  AccessibilityOptions({
      bool wheelchairAccessibleEntrance,
      bool wheelchairAccessibleRestroom,
      bool wheelchairAccessibleSeating,}){
    _wheelchairAccessibleEntrance = wheelchairAccessibleEntrance;
    _wheelchairAccessibleRestroom = wheelchairAccessibleRestroom;
    _wheelchairAccessibleSeating = wheelchairAccessibleSeating;
}

  AccessibilityOptions.fromJson(dynamic json) {
    _wheelchairAccessibleEntrance = json['wheelchairAccessibleEntrance'];
    _wheelchairAccessibleRestroom = json['wheelchairAccessibleRestroom'];
    _wheelchairAccessibleSeating = json['wheelchairAccessibleSeating'];
  }
  bool _wheelchairAccessibleEntrance;
  bool _wheelchairAccessibleRestroom;
  bool _wheelchairAccessibleSeating;
AccessibilityOptions copyWith({  bool wheelchairAccessibleEntrance,
  bool wheelchairAccessibleRestroom,
  bool wheelchairAccessibleSeating,
}) => AccessibilityOptions(  wheelchairAccessibleEntrance: wheelchairAccessibleEntrance ?? _wheelchairAccessibleEntrance,
  wheelchairAccessibleRestroom: wheelchairAccessibleRestroom ?? _wheelchairAccessibleRestroom,
  wheelchairAccessibleSeating: wheelchairAccessibleSeating ?? _wheelchairAccessibleSeating,
);
  bool get wheelchairAccessibleEntrance => _wheelchairAccessibleEntrance;
  bool get wheelchairAccessibleRestroom => _wheelchairAccessibleRestroom;
  bool get wheelchairAccessibleSeating => _wheelchairAccessibleSeating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['wheelchairAccessibleEntrance'] = _wheelchairAccessibleEntrance;
    map['wheelchairAccessibleRestroom'] = _wheelchairAccessibleRestroom;
    map['wheelchairAccessibleSeating'] = _wheelchairAccessibleSeating;
    return map;
  }

}
*/
/// paidParkingLot : true
/// paidStreetParking : true
/// valetParking : false

class ParkingOptions {
  ParkingOptions({
      required bool paidParkingLot,
      required bool paidStreetParking,
      required bool valetParking,}){
    _paidParkingLot = paidParkingLot;
    _paidStreetParking = paidStreetParking;
    _valetParking = valetParking;
}

  ParkingOptions.fromJson(dynamic json) {
    _paidParkingLot = json['paidParkingLot'];
    _paidStreetParking = json['paidStreetParking'];
    _valetParking = json['valetParking'];
  }
  bool _paidParkingLot;
  bool _paidStreetParking;
  bool _valetParking;
ParkingOptions copyWith({  bool paidParkingLot,
  required bool paidStreetParking,
  required bool valetParking,
}) => ParkingOptions(  paidParkingLot: paidParkingLot ?? _paidParkingLot,
  paidStreetParking: paidStreetParking ?? _paidStreetParking,
  valetParking: valetParking ?? _valetParking,
);
  bool get paidParkingLot => _paidParkingLot;
  bool get paidStreetParking => _paidStreetParking;
  bool get valetParking => _valetParking;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['paidParkingLot'] = _paidParkingLot;
    map['paidStreetParking'] = _paidStreetParking;
    map['valetParking'] = _valetParking;
    return map;
  }

}

/// acceptsCreditCards : true
/// acceptsDebitCards : true
/// acceptsCashOnly : false
/// acceptsNfc : true

class PaymentOptions {
  PaymentOptions({
      required bool acceptsCreditCards,
      required bool acceptsDebitCards,
      required bool acceptsCashOnly,
      required bool acceptsNfc,}){
    _acceptsCreditCards = acceptsCreditCards;
    _acceptsDebitCards = acceptsDebitCards;
    _acceptsCashOnly = acceptsCashOnly;
    _acceptsNfc = acceptsNfc;
}

  PaymentOptions.fromJson(dynamic json) {
    _acceptsCreditCards = json['acceptsCreditCards'];
    _acceptsDebitCards = json['acceptsDebitCards'];
    _acceptsCashOnly = json['acceptsCashOnly'];
    _acceptsNfc = json['acceptsNfc'];
  }
  bool _acceptsCreditCards;
  bool _acceptsDebitCards;
  bool _acceptsCashOnly;
  bool _acceptsNfc;
PaymentOptions copyWith({  required bool acceptsCreditCards,
  required bool acceptsDebitCards,
  required bool acceptsCashOnly,
  required bool acceptsNfc,
}) => PaymentOptions(  acceptsCreditCards: acceptsCreditCards ?? _acceptsCreditCards,
  acceptsDebitCards: acceptsDebitCards ?? _acceptsDebitCards,
  acceptsCashOnly: acceptsCashOnly ?? _acceptsCashOnly,
  acceptsNfc: acceptsNfc ?? _acceptsNfc,
);
  bool get acceptsCreditCards => _acceptsCreditCards;
  bool get acceptsDebitCards => _acceptsDebitCards;
  bool get acceptsCashOnly => _acceptsCashOnly;
  bool get acceptsNfc => _acceptsNfc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['acceptsCreditCards'] = _acceptsCreditCards;
    map['acceptsDebitCards'] = _acceptsDebitCards;
    map['acceptsCashOnly'] = _acceptsCashOnly;
    map['acceptsNfc'] = _acceptsNfc;
    return map;
  }

}

/// name : "places/ChIJWTGPjmaAhYARgXpiJ-aACYM/photos/AUc7tXWwixVg5wk_iy2gbmp-LN9b3OziTmcJRX4J-ScqdiJ37IoKRQPOVHVahMxp_yTmKiYNioE84kq_N8ApnKa6nzR2onx7tZte_McMTYrwl68cFUrA-qlL6C10HNvANiRwiDuX-SZv6dwnO8duG8HUlktkioj46_B-utS1"
/// widthPx : 5720
/// heightPx : 3718
/// authorAttributions : [{"displayName":"Hog Island Oyster Co.","uri":"//maps.google.com/maps/contrib/111592707657525468627","photoUri":"//lh3.googleusercontent.com/a-/ALV-UjX6rRI9Nw_7_0LqJM9I39LlMYLpk0MhaB4jZKXUFnpLT28rrcI=s100-p-k-no-mo"}]

class Photos {
  Photos({
      required String name,
      required num widthPx,
      required num heightPx,
      List<AuthorAttributions> authorAttributions,}){
    _name = name;
    _widthPx = widthPx;
    _heightPx = heightPx;
    _authorAttributions = authorAttributions;
}

  Photos.fromJson(dynamic json) {
    _name = json['name'];
    _widthPx = json['widthPx'];
    _heightPx = json['heightPx'];
    if (json['authorAttributions'] != null) {
      _authorAttributions = [];
      json['authorAttributions'].forEach((v) {
        _authorAttributions.add(AuthorAttributions.fromJson(v));
      });
    }
  }
  String _name;
  num _widthPx;
  num _heightPx;
  List<AuthorAttributions> _authorAttributions;
Photos copyWith({  String name,
  required num widthPx,
  required num heightPx,
  List<AuthorAttributions> authorAttributions,
}) => Photos(  name: name ?? _name,
  widthPx: widthPx ?? _widthPx,
  heightPx: heightPx ?? _heightPx,
  authorAttributions: authorAttributions ?? _authorAttributions,
);
  String get name => _name;
  num get widthPx => _widthPx;
  num get heightPx => _heightPx;
  List<AuthorAttributions> get authorAttributions => _authorAttributions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['widthPx'] = _widthPx;
    map['heightPx'] = _heightPx;
    if (_authorAttributions != null) {
      map['authorAttributions'] = _authorAttributions.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// displayName : "Hog Island Oyster Co."
/// uri : "//maps.google.com/maps/contrib/111592707657525468627"
/// photoUri : "//lh3.googleusercontent.com/a-/ALV-UjX6rRI9Nw_7_0LqJM9I39LlMYLpk0MhaB4jZKXUFnpLT28rrcI=s100-p-k-no-mo"

class AuthorAttributions {
  AuthorAttributions({
      required String displayName,
      required String uri,
      required String photoUri,}){
    _displayName = displayName;
    _uri = uri;
    _photoUri = photoUri;
}

  AuthorAttributions.fromJson(dynamic json) {
    _displayName = json['displayName'];
    _uri = json['uri'];
    _photoUri = json['photoUri'];
  }
  String _displayName;
  String _uri;
  String _photoUri;
AuthorAttributions copyWith({  String displayName,
  required String uri,
  required String photoUri,
}) => AuthorAttributions(  displayName: displayName ?? _displayName,
  uri: uri ?? _uri,
  photoUri: photoUri ?? _photoUri,
);
  String get displayName => _displayName;
  String get uri => _uri;
  String get photoUri => _photoUri;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['displayName'] = _displayName;
    map['uri'] = _uri;
    map['photoUri'] = _photoUri;
    return map;
  }

}

/// name : "places/ChIJWTGPjmaAhYARgXpiJ-aACYM/reviews/ChdDSUhNMG9nS0VJQ0FnSUNkcUlQaV9nRRAB"
/// relativePublishTimeDescription : "4 months ago"
/// rating : 5
/// text : {"text":"I popped into this restaurant on a weekday and snagged a table right away. While parking in the area can be pricey ($8/hour!), a quick 7-8 minute walk northeast leads to free street parking and gives you a chance to explore the neighborhood.\n\nThe food was fantastic! I started with the Hog Island oysters, which were incredibly fresh and bursting with flavor, without a hint of fishiness. Next, I tried the garlic grilled oysters, cooked to perfection - juicy, creamy, and infused with garlicky goodness. The old bay fries were another highlight - crispy on the outside, fluffy on the inside, and seasoned with a hint of sweetness. Even the ketchup impressed me - tangy and refreshing, it complemented the fries perfectly.\n\nThe clam chowder wasn't your typical version. Instead of small bits, it showcased plump whole clams in a slightly thinner, yet still creamy broth that avoided being overly milky.\n\nThe service was friendly and attentive, ensuring a smooth and enjoyable dining experience. Plus, considering the high quality of the food, the prices were very reasonable. This hidden gem, even amidst the tourist crowds, offers excellent value and deserves a visit!","languageCode":"en"}
/// originalText : {"text":"I popped into this restaurant on a weekday and snagged a table right away. While parking in the area can be pricey ($8/hour!), a quick 7-8 minute walk northeast leads to free street parking and gives you a chance to explore the neighborhood.\n\nThe food was fantastic! I started with the Hog Island oysters, which were incredibly fresh and bursting with flavor, without a hint of fishiness. Next, I tried the garlic grilled oysters, cooked to perfection - juicy, creamy, and infused with garlicky goodness. The old bay fries were another highlight - crispy on the outside, fluffy on the inside, and seasoned with a hint of sweetness. Even the ketchup impressed me - tangy and refreshing, it complemented the fries perfectly.\n\nThe clam chowder wasn't your typical version. Instead of small bits, it showcased plump whole clams in a slightly thinner, yet still creamy broth that avoided being overly milky.\n\nThe service was friendly and attentive, ensuring a smooth and enjoyable dining experience. Plus, considering the high quality of the food, the prices were very reasonable. This hidden gem, even amidst the tourist crowds, offers excellent value and deserves a visit!","languageCode":"en"}
/// authorAttribution : {"displayName":"Jason Y","uri":"https://www.google.com/maps/contrib/105363602600441080746/reviews","photoUri":"https://lh3.googleusercontent.com/a-/ALV-UjVeabFE2PNTvdkdAnBzDW9b3MnMm66qyJq3k3Quj0iQBzzE2nNGEQ=s128-c0x00000000-cc-rp-mo-ba4"}
/// publishTime : "2024-02-11T00:03:05Z"

class Reviews {
  Reviews({
      required String name,
      required String relativePublishTimeDescription,
      required num rating,
      required Text text,
      required OriginalText originalText,
      required AuthorAttribution authorAttribution,
      required String publishTime,}){
    _name = name;
    _relativePublishTimeDescription = relativePublishTimeDescription;
    _rating = rating;
    _text = text;
    _originalText = originalText;
    _authorAttribution = authorAttribution;
    _publishTime = publishTime;
}

  Reviews.fromJson(dynamic json) {
    _name = json['name'];
    _relativePublishTimeDescription = json['relativePublishTimeDescription'];
    _rating = json['rating'];
    _text = json['text'] != null ? Text.fromJson(json['text']) : null;
    _originalText = json['originalText'] != null ? OriginalText.fromJson(json['originalText']) : null;
    _authorAttribution = json['authorAttribution'] != null ? AuthorAttribution.fromJson(json['authorAttribution']) : null;
    _publishTime = json['publishTime'];
  }
  String _name;
  String _relativePublishTimeDescription;
  num _rating;
  Text _text;
  OriginalText _originalText;
  AuthorAttribution _authorAttribution;
  String _publishTime;
Reviews copyWith({  required String name,
  required String relativePublishTimeDescription,
  required num rating,
  required Text text,
  required OriginalText originalText,
  required AuthorAttribution authorAttribution,
  required String publishTime,
}) => Reviews(  name: name ?? _name,
  relativePublishTimeDescription: relativePublishTimeDescription ?? _relativePublishTimeDescription,
  rating: rating ?? _rating,
  text: text ?? _text,
  originalText: originalText ?? _originalText,
  authorAttribution: authorAttribution ?? _authorAttribution,
  publishTime: publishTime ?? _publishTime,
);
  String get name => _name;
  String get relativePublishTimeDescription => _relativePublishTimeDescription;
  num get rating => _rating;
  Text get text => _text;
  OriginalText get originalText => _originalText;
  AuthorAttribution get authorAttribution => _authorAttribution;
  String get publishTime => _publishTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['relativePublishTimeDescription'] = _relativePublishTimeDescription;
    map['rating'] = _rating;
    if (_text != null) {
      map['text'] = _text.toJson();
    }
    if (_originalText != null) {
      map['originalText'] = _originalText.toJson();
    }
    if (_authorAttribution != null) {
      map['authorAttribution'] = _authorAttribution.toJson();
    }
    map['publishTime'] = _publishTime;
    return map;
  }

}

/// displayName : "Jason Y"
/// uri : "https://www.google.com/maps/contrib/105363602600441080746/reviews"
/// photoUri : "https://lh3.googleusercontent.com/a-/ALV-UjVeabFE2PNTvdkdAnBzDW9b3MnMm66qyJq3k3Quj0iQBzzE2nNGEQ=s128-c0x00000000-cc-rp-mo-ba4"

class AuthorAttribution {
  AuthorAttribution({
      required String displayName,
      required String uri,
      required String photoUri,}){
    _displayName = displayName;
    _uri = uri;
    _photoUri = photoUri;
}

  AuthorAttribution.fromJson(dynamic json) {
    _displayName = json['displayName'];
    _uri = json['uri'];
    _photoUri = json['photoUri'];
  }
  String _displayName;
  String _uri;
  String _photoUri;
AuthorAttribution copyWith({  required String displayName,
  required String uri,
  required String photoUri,
}) => AuthorAttribution(  displayName: displayName ?? _displayName,
  uri: uri ?? _uri,
  photoUri: photoUri ?? _photoUri,
);
  String get displayName => _displayName;
  String get uri => _uri;
  String get photoUri => _photoUri;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['displayName'] = _displayName;
    map['uri'] = _uri;
    map['photoUri'] = _photoUri;
    return map;
  }

}

/// text : "I popped into this restaurant on a weekday and snagged a table right away. While parking in the area can be pricey ($8/hour!), a quick 7-8 minute walk northeast leads to free street parking and gives you a chance to explore the neighborhood.\n\nThe food was fantastic! I started with the Hog Island oysters, which were incredibly fresh and bursting with flavor, without a hint of fishiness. Next, I tried the garlic grilled oysters, cooked to perfection - juicy, creamy, and infused with garlicky goodness. The old bay fries were another highlight - crispy on the outside, fluffy on the inside, and seasoned with a hint of sweetness. Even the ketchup impressed me - tangy and refreshing, it complemented the fries perfectly.\n\nThe clam chowder wasn't your typical version. Instead of small bits, it showcased plump whole clams in a slightly thinner, yet still creamy broth that avoided being overly milky.\n\nThe service was friendly and attentive, ensuring a smooth and enjoyable dining experience. Plus, considering the high quality of the food, the prices were very reasonable. This hidden gem, even amidst the tourist crowds, offers excellent value and deserves a visit!"
/// languageCode : "en"

class OriginalText {
  OriginalText({
      required String text,
      required String languageCode,}){
    _text = text;
    _languageCode = languageCode;
}

  OriginalText.fromJson(dynamic json) {
    _text = json['text'];
    _languageCode = json['languageCode'];
  }
  String _text;
  String _languageCode;
OriginalText copyWith({  String text,
  String languageCode,
}) => OriginalText(  text: text ?? _text,
  languageCode: languageCode ?? _languageCode,
);
  String get text => _text;
  String get languageCode => _languageCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['languageCode'] = _languageCode;
    return map;
  }

}

/// text : "I popped into this restaurant on a weekday and snagged a table right away. While parking in the area can be pricey ($8/hour!), a quick 7-8 minute walk northeast leads to free street parking and gives you a chance to explore the neighborhood.\n\nThe food was fantastic! I started with the Hog Island oysters, which were incredibly fresh and bursting with flavor, without a hint of fishiness. Next, I tried the garlic grilled oysters, cooked to perfection - juicy, creamy, and infused with garlicky goodness. The old bay fries were another highlight - crispy on the outside, fluffy on the inside, and seasoned with a hint of sweetness. Even the ketchup impressed me - tangy and refreshing, it complemented the fries perfectly.\n\nThe clam chowder wasn't your typical version. Instead of small bits, it showcased plump whole clams in a slightly thinner, yet still creamy broth that avoided being overly milky.\n\nThe service was friendly and attentive, ensuring a smooth and enjoyable dining experience. Plus, considering the high quality of the food, the prices were very reasonable. This hidden gem, even amidst the tourist crowds, offers excellent value and deserves a visit!"
/// languageCode : "en"

class Text {
  Text({
      required String text,
      required String languageCode,}){
    _text = text;
    _languageCode = languageCode;
}

  Text.fromJson(dynamic json) {
    _text = json['text'];
    _languageCode = json['languageCode'];
  }
  String _text;
  String _languageCode;
Text copyWith({  String text,
  required String languageCode,
}) => Text(  text: text ?? _text,
  languageCode: languageCode ?? _languageCode,
);
  String get text => _text;
  String get languageCode => _languageCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['languageCode'] = _languageCode;
    return map;
  }

}

/// text : "Contemporary waterside seafood eatery serving local oysters and clams, plus craft cocktails."
/// languageCode : "en"

class EditorialSummary {
  EditorialSummary({
      String text,
      String languageCode,}){
    _text = text;
    _languageCode = languageCode;
}

  EditorialSummary.fromJson(dynamic json) {
    _text = json['text'];
    _languageCode = json['languageCode'];
  }
  String _text;
  String _languageCode;
EditorialSummary copyWith({  String text,
  required String languageCode,
}) => EditorialSummary(  text: text ?? _text,
  languageCode: languageCode ?? _languageCode,
);
  String get text => _text;
  String get languageCode => _languageCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['languageCode'] = _languageCode;
    return map;
  }

}

/// openNow : true
/// periods : [{"open":{"day":0,"hour":11,"minute":0,"date":{"year":2024,"month":6,"day":16}},"close":{"day":0,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":16}}},{"open":{"day":1,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":17}},"close":{"day":1,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":17}}},{"open":{"day":2,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":18}},"close":{"day":2,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":18}}},{"open":{"day":3,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":19}},"close":{"day":3,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":19}}},{"open":{"day":4,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":20}},"close":{"day":4,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":20}}},{"open":{"day":5,"hour":11,"minute":30,"date":{"year":2024,"month":6,"day":21}},"close":{"day":5,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":21}}},{"open":{"day":6,"hour":11,"minute":0,"date":{"year":2024,"month":6,"day":15}},"close":{"day":6,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":15}}}]
/// weekdayDescriptions : ["Monday: 11:30 AM – 8:00 PM","Tuesday: 11:30 AM – 8:00 PM","Wednesday: 11:30 AM – 8:00 PM","Thursday: 11:30 AM – 8:00 PM","Friday: 11:30 AM – 8:00 PM","Saturday: 11:00 AM – 8:00 PM","Sunday: 11:00 AM – 8:00 PM"]

class CurrentOpeningHours {
  CurrentOpeningHours({
      bool openNow,
      List<Periods> periods,
      List<String> weekdayDescriptions,}){
    _openNow = openNow;
    _periods = periods;
    _weekdayDescriptions = weekdayDescriptions;
}

  CurrentOpeningHours.fromJson(dynamic json) {
    _openNow = json['openNow'];
    if (json['periods'] != null) {
      _periods = [];
      json['periods'].forEach((v) {
        _periods.add(Periods.fromJson(v));
      });
    }
    _weekdayDescriptions = json['weekdayDescriptions'] != null ? json['weekdayDescriptions'].cast<String>() : [];
  }
  bool _openNow;
  List<Periods> _periods;
  List<String> _weekdayDescriptions;
CurrentOpeningHours copyWith({  bool openNow,
  List<Periods> periods,
  List<String> weekdayDescriptions,
}) => CurrentOpeningHours(  openNow: openNow ?? _openNow,
  periods: periods ?? _periods,
  weekdayDescriptions: weekdayDescriptions ?? _weekdayDescriptions,
);
  bool get openNow => _openNow;
  List<Periods> get periods => _periods;
  List<String> get weekdayDescriptions => _weekdayDescriptions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['openNow'] = _openNow;
    if (_periods != null) {
      map['periods'] = _periods.map((v) => v.toJson()).toList();
    }
    map['weekdayDescriptions'] = _weekdayDescriptions;
    return map;
  }

}

/// open : {"day":0,"hour":11,"minute":0,"date":{"year":2024,"month":6,"day":16}}
/// close : {"day":0,"hour":20,"minute":0,"date":{"year":2024,"month":6,"day":16}}

class Periods {
  Periods({
      Open open,
      Close close,}){
    _open = open;
    _close = close;
}

  Periods.fromJson(dynamic json) {
    _open = json['open'] != null ? Open.fromJson(json['open']) : null;
    _close = json['close'] != null ? Close.fromJson(json['close']) : null;
  }
  Open _open;
  Close _close;
Periods copyWith({  Open open,
  Close close,
}) => Periods(  open: open ?? _open,
  close: close ?? _close,
);
  Open get open => _open;
  Close get close => _close;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_open != null) {
      map['open'] = _open.toJson();
    }
    if (_close != null) {
      map['close'] = _close.toJson();
    }
    return map;
  }

}

/// day : 0
/// hour : 20
/// minute : 0
/// date : {"year":2024,"month":6,"day":16}

class Close {
  Close({
      num day,
      num hour,
      num minute,
      Date date,}){
    _day = day;
    _hour = hour;
    _minute = minute;
    _date = date;
}

  Close.fromJson(dynamic json) {
    _day = json['day'];
    _hour = json['hour'];
    _minute = json['minute'];
    _date = json['date'] != null ? Date.fromJson(json['date']) : null;
  }
  num _day;
  num _hour;
  num _minute;
  Date _date;
Close copyWith({  num day,
  num hour,
  num minute,
  Date date,
}) => Close(  day: day ?? _day,
  hour: hour ?? _hour,
  minute: minute ?? _minute,
  date: date ?? _date,
);
  num get day => _day;
  num get hour => _hour;
  num get minute => _minute;
  Date get date => _date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['hour'] = _hour;
    map['minute'] = _minute;
    if (_date != null) {
      map['date'] = _date.toJson();
    }
    return map;
  }

}

/// year : 2024
/// month : 6
/// day : 16

class Date {
  Date({
      num year,
      num month,
      num day,}){
    _year = year;
    _month = month;
    _day = day;
}

  Date.fromJson(dynamic json) {
    _year = json['year'];
    _month = json['month'];
    _day = json['day'];
  }
  num _year;
  num _month;
  num _day;
Date copyWith({  num year,
  num month,
  num day,
}) => Date(  year: year ?? _year,
  month: month ?? _month,
  day: day ?? _day,
);
  num get year => _year;
  num get month => _month;
  num get day => _day;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['year'] = _year;
    map['month'] = _month;
    map['day'] = _day;
    return map;
  }

}

/// day : 0
/// hour : 11
/// minute : 0
/// date : {"year":2024,"month":6,"day":16}

class Open {
  Open({
      num day,
      num hour,
      num minute,
      Date date,}){
    _day = day;
    _hour = hour;
    _minute = minute;
    _date = date;
}

  Open.fromJson(dynamic json) {
    _day = json['day'];
    _hour = json['hour'];
    _minute = json['minute'];
    _date = json['date'] != null ? Date.fromJson(json['date']) : null;
  }
  num _day;
  num _hour;
  num _minute;
  Date _date;
Open copyWith({  num day,
  num hour,
  num minute,
  Date date,
}) => Open(  day: day ?? _day,
  hour: hour ?? _hour,
  minute: minute ?? _minute,
  date: date ?? _date,
);
  num get day => _day;
  num get hour => _hour;
  num get minute => _minute;
  Date get date => _date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['hour'] = _hour;
    map['minute'] = _minute;
    if (_date != null) {
      map['date'] = _date.toJson();
    }
    return map;
  }

}

/// year : 2024
/// month : 6
/// day : 16

class Date {
  Date({
      num year,
      num month,
      num day,}){
    _year = year;
    _month = month;
    _day = day;
}

  Date.fromJson(dynamic json) {
    _year = json['year'];
    _month = json['month'];
    _day = json['day'];
  }
  num _year;
  num _month;
  num _day;
Date copyWith({  num year,
  num month,
  num day,
}) => Date(  year: year ?? _year,
  month: month ?? _month,
  day: day ?? _day,
);
  num get year => _year;
  num get month => _month;
  num get day => _day;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['year'] = _year;
    map['month'] = _month;
    map['day'] = _day;
    return map;
  }

}

/// text : "Restaurant"
/// languageCode : "en-US"

class PrimaryTypeDisplayName {
  PrimaryTypeDisplayName({
      String text,
      String languageCode,}){
    _text = text;
    _languageCode = languageCode;
}

  PrimaryTypeDisplayName.fromJson(dynamic json) {
    _text = json['text'];
    _languageCode = json['languageCode'];
  }
  String _text;
  String _languageCode;
PrimaryTypeDisplayName copyWith({  String text,
  String languageCode,
}) => PrimaryTypeDisplayName(  text: text ?? _text,
  languageCode: languageCode ?? _languageCode,
);
  String get text => _text;
  String get languageCode => _languageCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['languageCode'] = _languageCode;
    return map;
  }

}

/// text : "Hog Island Oyster Co."
/// languageCode : "en"

class DisplayName {
  DisplayName({
      String text,
      String languageCode,}){
    _text = text;
    _languageCode = languageCode;
}

  DisplayName.fromJson(dynamic json) {
    _text = json['text'];
    _languageCode = json['languageCode'];
  }
  String _text;
  String _languageCode;
DisplayName copyWith({  String text,
  String languageCode,
}) => DisplayName(  text: text ?? _text,
  languageCode: languageCode ?? _languageCode,
);
  String get text => _text;
  String get languageCode => _languageCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['languageCode'] = _languageCode;
    return map;
  }

}

/// openNow : true
/// periods : [{"open":{"day":0,"hour":11,"minute":0},"close":{"day":0,"hour":20,"minute":0}},{"open":{"day":1,"hour":11,"minute":30},"close":{"day":1,"hour":20,"minute":0}},{"open":{"day":2,"hour":11,"minute":30},"close":{"day":2,"hour":20,"minute":0}},{"open":{"day":3,"hour":11,"minute":30},"close":{"day":3,"hour":20,"minute":0}},{"open":{"day":4,"hour":11,"minute":30},"close":{"day":4,"hour":20,"minute":0}},{"open":{"day":5,"hour":11,"minute":30},"close":{"day":5,"hour":20,"minute":0}},{"open":{"day":6,"hour":11,"minute":0},"close":{"day":6,"hour":20,"minute":0}}]
/// weekdayDescriptions : ["Monday: 11:30 AM – 8:00 PM","Tuesday: 11:30 AM – 8:00 PM","Wednesday: 11:30 AM – 8:00 PM","Thursday: 11:30 AM – 8:00 PM","Friday: 11:30 AM – 8:00 PM","Saturday: 11:00 AM – 8:00 PM","Sunday: 11:00 AM – 8:00 PM"]

class RegularOpeningHours {
  RegularOpeningHours({
      bool openNow,
      List<Periods> periods,
      List<String> weekdayDescriptions,}){
    _openNow = openNow;
    _periods = periods;
    _weekdayDescriptions = weekdayDescriptions;
}

  RegularOpeningHours.fromJson(dynamic json) {
    _openNow = json['openNow'];
    if (json['periods'] != null) {
      _periods = [];
      json['periods'].forEach((v) {
        _periods.add(Periods.fromJson(v));
      });
    }
    _weekdayDescriptions = json['weekdayDescriptions'] != null ? json['weekdayDescriptions'].cast<String>() : [];
  }
  bool _openNow;
  List<Periods> _periods;
  List<String> _weekdayDescriptions;
RegularOpeningHours copyWith({  bool openNow,
  List<Periods> periods,
  List<String> weekdayDescriptions,
}) => RegularOpeningHours(  openNow: openNow ?? _openNow,
  periods: periods ?? _periods,
  weekdayDescriptions: weekdayDescriptions ?? _weekdayDescriptions,
);
  bool get openNow => _openNow;
  List<Periods> get periods => _periods;
  List<String> get weekdayDescriptions => _weekdayDescriptions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['openNow'] = _openNow;
    if (_periods != null) {
      map['periods'] = _periods.map((v) => v.toJson()).toList();
    }
    map['weekdayDescriptions'] = _weekdayDescriptions;
    return map;
  }

}

/// open : {"day":0,"hour":11,"minute":0}
/// close : {"day":0,"hour":20,"minute":0}

class Periods {
  Periods({
      Open open,
      Close close,}){
    _open = open;
    _close = close;
}

  Periods.fromJson(dynamic json) {
    _open = json['open'] != null ? Open.fromJson(json['open']) : null;
    _close = json['close'] != null ? Close.fromJson(json['close']) : null;
  }
  Open _open;
  Close _close;
Periods copyWith({  Open open,
  Close close,
}) => Periods(  open: open ?? _open,
  close: close ?? _close,
);
  Open get open => _open;
  Close get close => _close;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_open != null) {
      map['open'] = _open.toJson();
    }
    if (_close != null) {
      map['close'] = _close.toJson();
    }
    return map;
  }

}

/// day : 0
/// hour : 20
/// minute : 0

class Close {
  Close({
      num day,
      num hour,
      num minute,}){
    _day = day;
    _hour = hour;
    _minute = minute;
}

  Close.fromJson(dynamic json) {
    _day = json['day'];
    _hour = json['hour'];
    _minute = json['minute'];
  }
  num _day;
  num _hour;
  num _minute;
Close copyWith({  num day,
  num hour,
  num minute,
}) => Close(  day: day ?? _day,
  hour: hour ?? _hour,
  minute: minute ?? _minute,
);
  num get day => _day;
  num get hour => _hour;
  num get minute => _minute;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['hour'] = _hour;
    map['minute'] = _minute;
    return map;
  }

}

/// day : 0
/// hour : 11
/// minute : 0

class Open {
  Open({
      num day,
      num hour,
      num minute,}){
    _day = day;
    _hour = hour;
    _minute = minute;
}

  Open.fromJson(dynamic json) {
    _day = json['day'];
    _hour = json['hour'];
    _minute = json['minute'];
  }
  num _day;
  num _hour;
  num _minute;
Open copyWith({  num day,
  num hour,
  num minute,
}) => Open(  day: day ?? _day,
  hour: hour ?? _hour,
  minute: minute ?? _minute,
);
  num get day => _day;
  num get hour => _hour;
  num get minute => _minute;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['hour'] = _hour;
    map['minute'] = _minute;
    return map;
  }

}

/// low : {"latitude":37.7942496697085,"longitude":-122.39501388029147}
/// high : {"latitude":37.7969476302915,"longitude":-122.39231591970849}

class Viewport {
  Viewport({
      Low low,
      High high,}){
    _low = low;
    _high = high;
}

  Viewport.fromJson(dynamic json) {
    _low = json['low'] != null ? Low.fromJson(json['low']) : null;
    _high = json['high'] != null ? High.fromJson(json['high']) : null;
  }
  Low _low;
  High _high;
Viewport copyWith({  Low low,
  High high,
}) => Viewport(  low: low ?? _low,
  high: high ?? _high,
);
  Low get low => _low;
  High get high => _high;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_low != null) {
      map['low'] = _low.toJson();
    }
    if (_high != null) {
      map['high'] = _high.toJson();
    }
    return map;
  }

}

/// latitude : 37.7969476302915
/// longitude : -122.39231591970849

class High {
  High({
      num latitude,
      num longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  High.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num _latitude;
  num _longitude;
High copyWith({  num latitude,
  num longitude,
}) => High(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num get latitude => _latitude;
  num get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// latitude : 37.7942496697085
/// longitude : -122.39501388029147

class Low {
  Low({
      num latitude,
      num longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  Low.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num _latitude;
  num _longitude;
Low copyWith({  num latitude,
  num longitude,
}) => Low(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num get latitude => _latitude;
  num get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// latitude : 37.7959647
/// longitude : -122.3934171

class Location {
  Location({
      num latitude,
      num longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  Location.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num _latitude;
  num _longitude;
Location copyWith({  num latitude,
  num longitude,
}) => Location(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num get latitude => _latitude;
  num get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// globalCode : "849VQJW4+9J"
/// compoundCode : "QJW4+9J Embarcadero, San Francisco, CA, USA"

class PlusCode {
  PlusCode({
      String globalCode,
      String compoundCode,}){
    _globalCode = globalCode;
    _compoundCode = compoundCode;
}

  PlusCode.fromJson(dynamic json) {
    _globalCode = json['globalCode'];
    _compoundCode = json['compoundCode'];
  }
  String _globalCode;
  String _compoundCode;
PlusCode copyWith({  String globalCode,
  String compoundCode,
}) => PlusCode(  globalCode: globalCode ?? _globalCode,
  compoundCode: compoundCode ?? _compoundCode,
);
  String get globalCode => _globalCode;
  String get compoundCode => _compoundCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['globalCode'] = _globalCode;
    map['compoundCode'] = _compoundCode;
    return map;
  }

}

/// longText : "San Francisco"
/// shortText : "SF"
/// types : ["locality","political"]
/// languageCode : "en"

class AddressComponents {
  AddressComponents({
      String longText,
      String shortText,
      List<String> types,
      String languageCode,}){
    _longText = longText;
    _shortText = shortText;
    _types = types;
    _languageCode = languageCode;
}

  AddressComponents.fromJson(dynamic json) {
    _longText = json['longText'];
    _shortText = json['shortText'];
    _types = json['types'] != null ? json['types'].cast<String>() : [];
    _languageCode = json['languageCode'];
  }
  String _longText;
  String _shortText;
  List<String> _types;
  String _languageCode;
AddressComponents copyWith({  String longText,
  required String shortText,
  required List<String> types,
  required String languageCode,
}) => AddressComponents(  longText: longText ?? _longText,
  shortText: shortText ?? _shortText,
  types: types ?? _types,
  languageCode: languageCode ?? _languageCode,
);
  String get longText => _longText;
  String get shortText => _shortText;
  List<String> get types => _types;
  String get languageCode => _languageCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['longText'] = _longText;
    map['shortText'] = _shortText;
    map['types'] = _types;
    map['languageCode'] = _languageCode;
    return map;
  }

}