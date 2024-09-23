package com.beermaps.data.places

import com.google.android.libraries.places.api.model.Place
import com.google.android.libraries.places.api.net.PlacesClient

class NearbyPlacesRepository(private val source:PlacesDataSource = PlacesDataSource()) {

    private var places : List<Place>? =null
    suspend fun nearbyPlaces(client:PlacesClient):List<Place>{
        if (places == null) {
            places = source.getNearbyPlaces(client)
        }
        return places as List<Place>
    }
}