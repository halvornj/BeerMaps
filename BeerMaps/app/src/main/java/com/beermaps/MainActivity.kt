package com.beermaps

import android.os.Bundle
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.beermaps.ui.components.BottomBar
import com.beermaps.ui.mapscreen.MapScreen
import com.beermaps.ui.listscreen.ListScreen
import com.beermaps.ui.theme.BeerMapsTheme
import com.google.android.libraries.places.api.Places

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            BeerMapsTheme {
                //maps api
                val apiKey = BuildConfig.MAPS_API_KEY
                if (apiKey.isEmpty() || apiKey == "DEFAULT_API_KEY") {
                    Log.e("Places init", "No api key")}
                Places.initializeWithNewPlacesApiEnabled(applicationContext, apiKey)

                val navController = rememberNavController()
                Scaffold(modifier = Modifier.fillMaxSize(),
                    bottomBar = { BottomBar(navController = navController) }
                ) { innerPadding ->
                    NavHost(navController = navController, startDestination = "ListScreen") {
                        composable("ListScreen") { ListScreen(navController = navController) }
                        composable("MapScreen") { MapScreen(navController = navController) }
                    }
                }
            }
        }
    }
}


@Composable
fun Greeting(name: String, modifier: Modifier = Modifier) {
    Text(
        text = "Hello $name!",
        modifier = modifier
    )
}

@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    BeerMapsTheme {
        Greeting("Android")
    }
}