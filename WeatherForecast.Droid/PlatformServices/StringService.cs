using System;
using Android.App;
using WeatherForecast.Service.Contract;

namespace WeatherForecast.Droid.PlatformServices
{
    public class StringService : IStringService
    {
        public string GetString(string name)
        {
            var resources = Application.Context.Resources;
            var resId = resources.GetIdentifier(name, "string", Application.Context.PackageName);
            if (resId == 0)
            {
                return null;
            }
            return resources.GetString(resId);
        }
    }
}
