package com.beermaps.data.places

import android.location.Location
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.tasks.Tasks
import com.google.android.libraries.places.api.model.CircularBounds
import com.google.android.libraries.places.api.model.DayOfWeek
import com.google.android.libraries.places.api.model.LocalTime
import com.google.android.libraries.places.api.model.OpeningHours
import com.google.android.libraries.places.api.model.Period
import com.google.android.libraries.places.api.model.PhotoMetadata
import com.google.android.libraries.places.api.model.Place
import com.google.android.libraries.places.api.model.TimeOfWeek
import com.google.android.libraries.places.api.net.PlacesClient
import com.google.android.libraries.places.api.net.SearchNearbyRequest


class PlacesDataSource {

    fun getNearbyPlaces(placesClient: PlacesClient, radius:Double=10000.0): List<Place> {
        //todo implement position - I'm thinking optional, if not provided, call the position-getter here.

        //!this is the mock data :)
        val mock = Place.builder()
                mock.displayName = "Amatøren - student bar"
                mock.id = "ChIJ8Vf4v_ttQUYRN7bGAViwcpc"
                mock.formattedAddress = "Rolf E. Stenersens allé 24, 0858 Oslo, Norway"
                mock.iconMaskUrl= "https://maps.gstatic.com/mapfiles/place_api/icons/v2/bar_pinlet.png"
                mock.iconBackgroundColor = -24985
                mock.currentOpeningHours = OpeningHours.builder()
                    .setPeriods(
                        listOf(
                            Period.builder()
                                .setOpen(
                                    TimeOfWeek.newInstance(DayOfWeek.WEDNESDAY, LocalTime.newInstance(18, 0))
                                )
                                .setClose(
                                    TimeOfWeek.newInstance(DayOfWeek.THURSDAY, LocalTime.newInstance(0, 0))
                                )
                                .build(),
                            Period.builder()
                                .setOpen(
                                    TimeOfWeek.newInstance(DayOfWeek.FRIDAY, LocalTime.newInstance(18, 0))
                                )
                                .setClose(
                                    TimeOfWeek.newInstance(DayOfWeek.SATURDAY, LocalTime.newInstance(0, 0))
                                )
                                .build()
                        )
                    )
                    .build()
                mock.photoMetadatas = mutableListOf(
                    PhotoMetadata.builder("AXCi2Q7V61qqybYAWKPz6iwdESQuV47GM39h6MSbKI8kYAk4_itCA6LwfpyVUzFJkCwKQx")
                        .setAttributions(
                            "<a href=\"https://maps.google.com/maps/contrib/118001042626912805791\">Sailesh Dhital</a>"
                        )
                        .setWidth(4032)
                        .setHeight(2268)
                        //boy I sure hope this is the right field for the photoReference
                        .build(),
                )
                mock.location = LatLng(59.96362023270452, 10.730513880953739)
        //return listOf(mock.build())
        //END mock data

        //params for request:
        val responseFields = listOf(
            Place.Field.ID,
            Place.Field.FORMATTED_ADDRESS,
            Place.Field.CURRENT_OPENING_HOURS,
            //Place.Field.EDITORIAL_SUMMARY,
            Place.Field.ICON_MASK_URL,
            Place.Field.ICON_BACKGROUND_COLOR,
            Place.Field.DISPLAY_NAME,
            Place.Field.LOCATION,
            //Place.Field.RATING,
            Place.Field.PHOTO_METADATAS, //this may be too many photos, we just need a cover photo
            //Place.Field.SERVES_BEER,
            //Place.Field.SERVES_WINE,
            ) //the fields we want in response
        val location = Location("dummy") //TODO this should be func-param or get from provider
        location.latitude = 59.96362023270452
        location.longitude =  10.730513880953739

        val center = LatLng(location.latitude, location.longitude)
        val area = CircularBounds.newInstance(center, radius)

        val includedTypes = listOf("bar", "night_club")


        //build the request
        val request = SearchNearbyRequest.builder(area, responseFields)
            .setIncludedTypes(includedTypes)
            .setMaxResultCount(20)
            .setRankPreference(SearchNearbyRequest.RankPreference.DISTANCE)
            .build()


        val task = placesClient.searchNearby(request)
        val result = Tasks.await(task).places

        return result
    }
}