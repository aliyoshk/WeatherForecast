using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using WeatherForecast.Domain.Response;
using WeatherForecast.Domain.Network;
using WeatherForecast.ViewModel;
using WeatherForecast.Service.Factory;
using System.Threading.Tasks;
using WeatherForecast.Domain.Request;
using Android.Widget;
using Android.Telephony;
using Android.Content;
using Newtonsoft.Json;
using WeatherForecast.Droid.Screens;
using WeatherForecast.Droid.Utils;
using AlertDialog = AndroidX.AppCompat.App.AlertDialog;

namespace WeatherForecast.Droid
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        DataVM dataVM;
        WeatherRequest weatherRequest = new WeatherRequest();
        Button Search;
        EditText City;
        private ProgressDialog progress;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            App.Initialize();
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            dataVM = ServiceFactory.Resolve<DataVM>();
            progress = new ProgressDialog(this);

            Search = FindViewById<Button>(Resource.Id.btn_search);
            City = FindViewById<EditText>(Resource.Id.et_search);

            City.TextChanged += City_TextChanged;
            Search.Click += Search_Click;

            var favouriteCity = MemoryManager.Instance(this).getSavedCity("savedCity");
            if (favouriteCity != null)
            {
                Intent intent = new Intent(this, typeof(WeatherDataActivity));
                intent.PutExtra("isContainCity", true);
                intent.PutExtra("WeatherData", JsonConvert.SerializeObject(favouriteCity).ToString());
                StartActivity(intent);
            }
        }

        private void City_TextChanged(object sender, Android.Text.TextChangedEventArgs e)
        {
            if (!string.IsNullOrEmpty(City.Text))
                dataVM.weatherRequest.CityName = City.Text.ToString();
        }

        private void Search_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(City.Text))
                Toast.MakeText(this, "Enter a city", ToastLength.Short).Show();
            else
                CallEndpoint();
        }

        private async void CallEndpoint()
        {
            progress.SetCancelable(false);
            progress.SetMessage("Please wait..");
            progress.Show();
            await dataVM.GetWeatherData(dataVM.weatherRequest, onSuccess, onError);
        }

        private void onSuccess(WeatherResponse obj)
        {
            RunOnUiThread(() =>
            {
                progress.Dismiss();
                StartActivity(new Intent(this, typeof(WeatherDataActivity)).PutExtra("WeatherData", JsonConvert.SerializeObject(obj).ToString()));
            });
        }

        private void onError(ApiError obj)
        {
            RunOnUiThread(() =>
            {
                progress.Dismiss();
                ShowMessageDialog(obj.ConcatenatedErrors);
            });
        }

        private void ShowMessageDialog(string message)
        {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.SetTitle("Error");
            builder.SetMessage(message);
            builder.SetPositiveButton("Retry", (sender, args) =>
            {
                CallEndpoint();
            });
            builder.SetNegativeButton("Back", (sender, args) =>
            {
                OnBackPressed();
            });

            AlertDialog dialog = builder.Create();
            dialog.Show();
        }
    }
}
