
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace WeatherForecast.Droid.Screens
{
    [Activity(Label = "SplashActivity", MainLauncher = true, Theme = "@style/SplashTheme", NoHistory = true)]
    public class SplashActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your application here

            _ = SimulateStartup();
            
        }

        protected override void OnResume()
        {
            base.OnResume();
            _ = SimulateStartup();
        }

        private async Task SimulateStartup()
        {
            await Task.Delay(TimeSpan.FromSeconds(1));
            StartActivity(new Intent(this, typeof(MainActivity)));
            Finish();
        }
    }
}
