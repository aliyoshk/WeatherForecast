using Autofac;
using WeatherForecast.Droid.PlatformServices;
using WeatherForecast.Service.Contract;
using WeatherForecast.Service.Factory;

namespace WeatherForecast.Droid
{
    public class App
    {
        private static bool isInitialized;
        public const string APPLICATION_ERROR = "Phygital Error log";


        public static void Initialize()
        {
            if (isInitialized) return;
            ServiceFactory.Create(builder =>
            {
                //builder.RegisterType<Telephony>().As<ITelephony>();
                //builder.RegisterType<SQLite_Droid>().As<ISQLite>();
                builder.RegisterType<StringService>().As<IStringService>();
            });
            isInitialized = true;
        }

    }
}
