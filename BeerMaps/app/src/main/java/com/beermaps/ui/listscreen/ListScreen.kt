package com.beermaps.ui.listscreen

import androidx.compose.runtime.Composable
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import com.beermaps.Greeting

@Composable
fun ListScreen(
    navController: NavController,
    viewModel:ListScreenViewModel = viewModel()
){
    Greeting(name ="ListScreen")
}