
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Webkit;
using Android.Widget;
using Newtonsoft.Json;
using WeatherForecast.Domain.Response;
using WeatherForecast.Droid.Utils;
using static System.Net.Mime.MediaTypeNames;
using static Android.Content.ClipData;
using static AndroidX.RecyclerView.Widget.RecyclerView;

namespace WeatherForecast.Droid.Screens
{
	[Activity (Label = "WeatherDataActivity")]			
	public class WeatherDataActivity : Activity
	{
		WeatherResponse response = new WeatherResponse();
		ImageView icon, icon_like;
		TextView city, temperature, date, desc, humidity, pressure, longitude, latitude, degree, speed, sunset, sunrise, visibility;
        bool click = false;

        protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.activity_weather_data);
			// Create your application here
			icon = FindViewById<ImageView>(Resource.Id.icon);
            city = FindViewById<TextView>(Resource.Id.city);
            temperature = FindViewById<TextView>(Resource.Id.temperature);
            date = FindViewById<TextView>(Resource.Id.date);
            icon_like = FindViewById<ImageView>(Resource.Id.icon_like);
            desc = FindViewById<TextView>(Resource.Id.desc);
            humidity = FindViewById<TextView>(Resource.Id.humidity);
            pressure = FindViewById<TextView>(Resource.Id.pressure);
            longitude = FindViewById<TextView>(Resource.Id.longitude);
            latitude = FindViewById<TextView>(Resource.Id.latitude);
            degree = FindViewById<TextView>(Resource.Id.degree);
            speed = FindViewById<TextView>(Resource.Id.speed);
            sunset = FindViewById<TextView>(Resource.Id.sunset);
            sunrise = FindViewById<TextView>(Resource.Id.sunrise);
            visibility = FindViewById<TextView>(Resource.Id.visibility);

            if (Intent != null)
			{
                Weather weather = new Weather();
                response = JsonConvert.DeserializeObject<WeatherResponse>(Intent.GetStringExtra("WeatherData"));
                foreach(var item in response.weather)
                {
                    weather = item;
                }

                //icon.SetImageResource((int)weather.Icon);
                city.Text = response.name + "   (" + response.Sys.Country + ")";
                date.Text = DateTime.Now.ToString();
                temperature.Text = response.Main.Temp.ToString() + " oC";
                desc.Text = "Description\n\n" + weather.Main;
                humidity.Text = "Humidity\n\n" + response.Main.Humidity;
                pressure.Text = "Pressure\n\n" + response.Main.Pressure;
                longitude.Text = "Longitude\n\n" + response.Coord.Lon;
                latitude.Text = "Latitude\n\n" + response.Coord.Lat;
                degree.Text = "Degree\n\n" + response.Wind.Deg;
                speed.Text = "Speed\n\n" + response.Wind.Speed;
                sunset.Text = "Sunset\n\n" + response.Sys.Sunset;
                sunrise.Text = "Sunrise\n\n" + response.Sys.Sunrise;
                visibility.Text = "Visibility\n\n" + response.Visibility;

                if (Intent.HasExtra("isContainCity"))
                {
                    icon_like.SetImageResource(Resource.Drawable.ic_click);
                    click = true;
                }
            }

            icon_like.Click += Icon_like_Click;
        }

        private void Icon_like_Click(object sender, EventArgs e)
        {
            if (click)
            {
                icon_like.SetImageResource(Resource.Drawable.ic_unclick);
                MemoryManager.Instance(this).removePreference("savedCity");
            }
            else
            {
                icon_like.SetImageResource(Resource.Drawable.ic_click);
                MemoryManager.Instance(this).saveCity("savedCity", response);
            }
            click = !click;
        }
    }
}

