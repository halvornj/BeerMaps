package com.beermaps.ui.mapscreen

import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import com.beermaps.R
import com.beermaps.ui.listscreen.PlacesList
import com.google.android.gms.maps.model.CameraPosition
import com.google.android.gms.maps.model.LatLng
import com.google.maps.android.compose.GoogleMap
import com.google.maps.android.compose.Marker
import com.google.maps.android.compose.rememberCameraPositionState
import com.google.maps.android.compose.rememberMarkerState

@Composable
fun MapScreen(
    navController: NavController,
    padding : PaddingValues,
    viewModel: MapScreenViewModel = viewModel()
){
    val placesList: PlacesList by viewModel.placesState.collectAsState()


    val userPosition = LatLng(59.94367654887521, 10.718516590580798) //TODO get this from the (currently non-existent) location service
    val cameraPosition = rememberCameraPositionState{
        position= CameraPosition.fromLatLngZoom(userPosition, 10f)

    }
    GoogleMap(
        modifier = Modifier.fillMaxSize().padding(padding),
        cameraPositionState = cameraPosition,

    ){
        Marker(
            state = rememberMarkerState(position = userPosition),
            title= stringResource(id = R.string.your_position),
        )
        placesList.places.forEach { place ->
            if(place.location != null) { //place markers on the places with gotten locations
                Marker(
                    state = rememberMarkerState(position = place.location!!),
                    title = place.displayName,
                    snippet = place.editorialSummary,
                    
                )
            }
        }
    }
}