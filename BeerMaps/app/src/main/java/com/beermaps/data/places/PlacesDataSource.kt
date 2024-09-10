package com.beermaps.data.places

import android.location.Location
import android.util.Log
import com.beermaps.BuildConfig
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.tasks.Task
import com.google.android.libraries.places.api.Places
import com.google.android.libraries.places.api.model.CircularBounds
import com.google.android.libraries.places.api.model.Place
import com.google.android.libraries.places.api.net.PlacesClient
import com.google.android.libraries.places.api.net.SearchNearbyRequest
import com.google.android.libraries.places.api.net.SearchNearbyResponse


class PlacesDataSource {

    fun getNearbyPlaces(placesClient: PlacesClient, radius:Double=1000.0): Task<SearchNearbyResponse> {
        //todo implement position - I'm thinking optional, if not provided, call the position-getter here.

        //params for request:
        val responseFields = listOf(
            Place.Field.ID,
            Place.Field.ADDRESS,
            Place.Field.CURRENT_OPENING_HOURS,
            Place.Field.EDITORIAL_SUMMARY,
            Place.Field.ICON_URL,
            Place.Field.ICON_BACKGROUND_COLOR,
            Place.Field.NAME,
            Place.Field.RATING,
            Place.Field.PHOTO_METADATAS, //this may be too many photos, we just need a cover photo
            Place.Field.SERVES_BEER,
            Place.Field.SERVES_WINE,
            ) //the fields we want in response
        val location = Location("dummy") //TODO this should be func-param or get from provider
        location.latitude = 59.9138688
        location.longitude = 10.7522454

        val center = LatLng(location.latitude, location.longitude)
        val area = CircularBounds.newInstance(center, radius)

        val includedTypes = listOf("bar", "night_club")


        //build the request
        val request = SearchNearbyRequest.builder(area, responseFields)
            .setIncludedTypes(includedTypes)
            .setMaxResultCount(15)
            .build()


        val task = placesClient.searchNearby(request)
            .addOnSuccessListener { response->
                val places = response.places
                for (place in places){
                    Log.d("PlacesDataSource", "Place: ${place.name}")
                }
            }
            .addOnFailureListener { exception->
                Log.e("PlacesDataSource", "Failed to get places: ${exception.message}")
                throw Exception("Failed to get places: ${exception.message}")
            }
        return task
    }
}