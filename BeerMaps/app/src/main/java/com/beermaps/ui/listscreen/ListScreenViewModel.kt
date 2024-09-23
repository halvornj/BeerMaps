package com.beermaps.ui.listscreen

import android.app.Application
import android.content.Context
import android.util.Log
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.beermaps.data.places.NearbyPlacesRepository
import com.beermaps.data.places.PlacesDataSource
import com.google.android.libraries.places.api.Places
import com.google.android.libraries.places.api.model.Place
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch


data class PlacesList(
    val places: List<Place> = emptyList()
)

class ListScreenViewModel(application: Application): AndroidViewModel(application) {
    private val TAG = ListScreenViewModel::class.simpleName
    private val dataRepo: NearbyPlacesRepository = NearbyPlacesRepository()
    private val _placesState: MutableStateFlow<PlacesList> = MutableStateFlow(PlacesList())
    val placesState: StateFlow<PlacesList> = _placesState.asStateFlow()

    init {
        getNearbyPlaces()
    }

    private fun getNearbyPlaces(){
        viewModelScope.launch(Dispatchers.IO) {
            Log.d(TAG, "getting places")
            val res = dataRepo.nearbyPlaces(Places.createClient(getApplication()))
            _placesState.update {
                PlacesList(places = res)
            }
        }
    }

}