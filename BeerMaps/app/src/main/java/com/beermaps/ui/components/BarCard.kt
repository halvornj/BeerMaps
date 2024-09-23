package com.beermaps.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.Button
import androidx.compose.material.Card
import androidx.compose.material.CircularProgressIndicator
import androidx.compose.material.Divider
import androidx.compose.material.Text
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import coil.compose.SubcomposeAsyncImage
import com.beermaps.R
import com.beermaps.data.places.NearbyPlacesRepository
import com.google.android.libraries.places.api.model.DayOfWeek
import com.google.android.libraries.places.api.model.LocalTime
import com.google.android.libraries.places.api.model.OpeningHours
import com.google.android.libraries.places.api.model.Period
import com.google.android.libraries.places.api.model.PhotoMetadata
import com.google.android.libraries.places.api.model.Place
import com.google.android.libraries.places.api.model.TimeOfWeek

@Composable
fun BarCard(bar:Place, modifier:Modifier = Modifier) {
    Card(
        shape = RoundedCornerShape(percent = 10),
        modifier = modifier
            .padding(6.dp)
            .border(1.dp, Color.Gray, shape = RoundedCornerShape(percent = 10)),
    ) {
        Row(
            modifier = Modifier.padding(8.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween,
        ) {
            SubcomposeAsyncImage(
                model = bar.iconMaskUrl,
                contentDescription = "Establishment category icon",
                loading = { CircularProgressIndicator() },
                contentScale = ContentScale.Fit,
                modifier = Modifier
                    .clip(RoundedCornerShape(percent = 10))
                    .background(Color(bar.iconBackgroundColor))
                    .padding(5.dp)
                ,


                )
            Column(
                modifier = Modifier
                    .fillMaxWidth(fraction = 0.5f)
                    .padding(4.dp),
                verticalArrangement = Arrangement.SpaceEvenly,
                horizontalAlignment = Alignment.Start

            ) {
                Text(text = bar.displayName, style = MaterialTheme.typography.headlineSmall)
                Text(text = "50kr", style = MaterialTheme.typography.bodyMedium)
            }
            Column(
                horizontalAlignment = Alignment.End,
                modifier = Modifier
                    .padding(4.dp)

            ) {
                //<show in map> and <edit> buttons
                Button(onClick = { /*TODO*/ }) {
                    Text(stringResource(id = R.string.barcard_show_map_button))
                }
                Divider(modifier = Modifier.height(1.dp))
                Button(onClick = { /*TODO*/ }) {
                    Text(stringResource(id = R.string.barcard_edit_button))
                }
            }
        }
    }
}





@Preview(showBackground = true)
@Composable
fun BarCardPreview(){
    val mock = Place.builder()
    mock.displayName = "Amatøren - student bar"
    mock.id = "ChIJ8Vf4v_ttQUYRN7bGAViwcpc"
    mock.formattedAddress = "Rolf E. Stenersens allé 24, 0858 Oslo, Norway"
    mock.iconMaskUrl= "https://maps.gstatic.com/mapfiles/place_api/icons/v2/bar_pinlet.png"
    mock.iconBackgroundColor = -24985
    mock.currentOpeningHours = OpeningHours.builder()
        .setPeriods(
            listOf(
                Period.builder()
                    .setOpen(
                        TimeOfWeek.newInstance(DayOfWeek.WEDNESDAY, LocalTime.newInstance(18, 0))
                    )
                    .setClose(
                        TimeOfWeek.newInstance(DayOfWeek.THURSDAY, LocalTime.newInstance(0, 0))
                    )
                    .build(),
                Period.builder()
                    .setOpen(
                        TimeOfWeek.newInstance(DayOfWeek.FRIDAY, LocalTime.newInstance(18, 0))
                    )
                    .setClose(
                        TimeOfWeek.newInstance(DayOfWeek.SATURDAY, LocalTime.newInstance(0, 0))
                    )
                    .build()
            )
        )
        .build()
    mock.photoMetadatas = mutableListOf(
        PhotoMetadata.builder("AXCi2Q7V61qqybYAWKPz6iwdESQuV47GM39h6MSbKI8kYAk4_itCA6LwfpyVUzFJkCwKQx")
            .setAttributions(
                "<a href=\"https://maps.google.com/maps/contrib/118001042626912805791\">Sailesh Dhital</a>"
            )
            .setWidth(4032)
            .setHeight(2268)
            //boy I sure hope this is the right field for the photoReference
            .build(),
    )
    BarCard(mock.build())
}