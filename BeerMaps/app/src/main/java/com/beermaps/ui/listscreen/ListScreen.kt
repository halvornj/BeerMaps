package com.beermaps.ui.listscreen

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import com.beermaps.Greeting
import com.beermaps.ui.components.BarCard
import com.beermaps.ui.components.BarCardPreview
import com.google.android.libraries.places.api.model.DayOfWeek
import com.google.android.libraries.places.api.model.LocalTime
import com.google.android.libraries.places.api.model.OpeningHours
import com.google.android.libraries.places.api.model.Period
import com.google.android.libraries.places.api.model.PhotoMetadata
import com.google.android.libraries.places.api.model.Place
import com.google.android.libraries.places.api.model.TimeOfWeek

@Composable
fun ListScreen(
    navController: NavController,
    viewModel:ListScreenViewModel = viewModel()
){
    val placesList: PlacesList by viewModel.placesState.collectAsState()
    LazyColumn (
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.fillMaxSize().padding(4.dp)
    ){
        items(placesList.places){place ->
            BarCard(bar = place)
        }
    }
}