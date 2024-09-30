package com.beermaps.ui.mapscreen

import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
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
    viewModel: MapScreenViewModel = viewModel()
){
    val placesList: PlacesList by viewModel.placesState.collectAsState()


    val userPosition = LatLng(59.96362023270452, 10.730513880953739) //TODO get this from the (currently non-existent) location service
    val cameraPosition = rememberCameraPositionState{
        position= CameraPosition.fromLatLngZoom(userPosition, 10f)

    }
    GoogleMap(
        modifier = Modifier.fillMaxSize(),
        cameraPositionState = cameraPosition,
    ){
        placesList.places.forEach { place ->
            Marker(
                state = rememberMarkerState(position = place.location),
                title = place.displayName,
                snippet = place.editorialSummary

            )
        }
    }
}