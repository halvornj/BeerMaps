package com.beermaps.ui.mapscreen

import android.graphics.drawable.BitmapDrawable
import android.util.Log
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material.CircularProgressIndicator
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Info
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import coil.ImageLoader
import coil.compose.SubcomposeAsyncImage
import coil.compose.rememberAsyncImagePainter
import com.beermaps.R
import com.beermaps.ui.listscreen.PlacesList
import com.google.android.gms.maps.model.AdvancedMarkerOptions
import com.google.android.gms.maps.model.BitmapDescriptorFactory
import com.google.android.gms.maps.model.CameraPosition
import com.google.android.gms.maps.model.LatLng
import com.google.android.gms.maps.model.MapStyleOptions
import com.google.android.gms.maps.model.PinConfig
import com.google.maps.android.compose.AdvancedMarker
import com.google.maps.android.compose.GoogleMap
import com.google.maps.android.compose.MapProperties
import com.google.maps.android.compose.Marker
import com.google.maps.android.compose.MarkerComposable
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
        position= CameraPosition.fromLatLngZoom(userPosition, 16f)

    }
    GoogleMap(
        modifier = Modifier.fillMaxSize().padding(padding),
        cameraPositionState = cameraPosition,
        properties = MapProperties(
            isMyLocationEnabled = true,
        )

    ){
        Marker(
            state = rememberMarkerState(position = userPosition),
            title= stringResource(id = R.string.your_position),
        )
        placesList.places.forEach { place ->
            if(place.location != null) { //place markers on the places with gotten locations
                //todo we could wget all the official icons and use them here, or as a custom pin in MarkerComposable
                val pinConfig = PinConfig.builder()
                    .setBackgroundColor(-24985)
                    .setBorderColor(Color.Blue.toArgb())
                    //.setGlyph(PinConfig.Glyph(BitmapDescriptorFactory.fromResource(R.drawable.ic_beer)))
                    .build()
                AdvancedMarker(
                    state = rememberMarkerState(position = place.location!!),
                    title = place.displayName,
                    snippet = place.formattedAddress,
                    pinConfig = pinConfig,
                )
            }
        }
    }
}