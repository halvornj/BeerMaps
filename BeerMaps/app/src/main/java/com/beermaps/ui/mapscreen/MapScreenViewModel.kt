package com.beermaps.ui.mapscreen

import android.app.Application
import android.util.Log
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.beermaps.data.places.NearbyPlacesRepository
import com.beermaps.ui.listscreen.PlacesList
import com.google.android.libraries.places.api.Places
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class MapScreenViewModel(application: Application): AndroidViewModel(application) {

    private val dataRepo: NearbyPlacesRepository = NearbyPlacesRepository()
    private val _placesState: MutableStateFlow<PlacesList> = MutableStateFlow(PlacesList())
    val placesState: StateFlow<PlacesList> = _placesState.asStateFlow()

    init {
        getNearbyPlaces()
    }

    private fun getNearbyPlaces(){
        viewModelScope.launch(Dispatchers.IO) {
            val res = dataRepo.nearbyPlaces(Places.createClient(getApplication()))
            _placesState.update {
                PlacesList(places = res)
            }
        }
    }
}