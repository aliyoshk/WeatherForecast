using System;
using System.Globalization;
using System.Reflection;
using System.Threading;
using Autofac;
using WeatherForecast.Service.Contract;
using WeatherForecast.Service.Implementation;
using WeatherForecast.Service.Implementation.Base;
using WeatherForecast.ViewModel;

namespace WeatherForecast.Service.Factory
{
    public static class ServiceFactory
    {

        static ServiceFactory()
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
        }


        public static IContainer Container { get; set; }
        public static bool ReIssueTokenOnError = true;
        public static T Resolve<T>() => Container.Resolve<T>();
        private static ContainerBuilder builder;
        public static void Create(Action<ContainerBuilder> builderConfig)
        {
            builder = new ContainerBuilder();

#if !DEBUG

            //Register mock services here

            //DON'T FORGET TO REGISTER AN ACTUAL MOCK SERVICE

            builder.RegisterAssemblyTypes(typeof(Mock.MockDataService).Assembly)
                .Where(t => t.Name.Contains("Service")
                        && t.IsClass && !t.IsAbstract)
                .AsImplementedInterfaces();
#else
            //*******************************************
            //Register the concrete services here
            builder.RegisterAssemblyTypes(typeof(ApiService).Assembly)
                .Where(t => t.Name.Contains("Service")
                && t.IsClass && !t.IsAbstract)
                .AsImplementedInterfaces();


#endif
            //***************************************
            //Register ViewModels here
            builder.RegisterAssemblyTypes(Assembly.GetAssembly(typeof(BaseVM)))
                .Where(t => t.IsSubclassOf(typeof(BaseVM)))
                .AsSelf()
                .SingleInstance();

            //*******************************************
            //run configurations/registrations specified by the calling platform
            builderConfig?.Invoke(builder);
            Container = builder?.Build();
            ViewModel.ServiceProvider.Container = Container;
        }
    }
}
