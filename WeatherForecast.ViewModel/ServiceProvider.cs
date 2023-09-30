using System;
using Autofac;

namespace WeatherForecast.ViewModel
{
    public static class ServiceProvider
    {
        public static IContainer Container { get; set; }
        public static T Resolve<T>() => Container.Resolve<T>();
    }
}