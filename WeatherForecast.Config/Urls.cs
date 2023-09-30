using System;
namespace WeatherForecast.Config
{
    public static class Urls
    {
#if !RELEASE
        public const string Url = "https://api.openweathermap.org/";

#else
        public const string Url = "";

#endif
        public const string GETWEATHER = Url + "data/2.5/weather?q={0}&appid=a224befbe0282d095bb3e06e0cd2b568";
    }
}