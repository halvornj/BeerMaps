package com.beermaps.ui.listscreen

import android.app.Application
import android.content.Context
import android.util.Log
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.ViewModel
import com.beermaps.data.places.PlacesDataSource
import com.google.android.libraries.places.api.Places

class ListScreenViewModel(application: Application): AndroidViewModel(application) {
    private val TAG = ListScreenViewModel::class.simpleName

    //todo cleanup, this is for testing the datasource but data should be from repo
    private val datasource = PlacesDataSource()
    private val placesClient = Places.createClient(application as Context)
    init {
        Log.d(TAG, "getting places")
        val res = datasource.getNearbyPlaces(placesClient)
        Log.d(TAG, "got places: ${res?.size}")
        Log.d(TAG, res.toString())
    }

}