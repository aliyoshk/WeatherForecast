using System;
using System.Threading.Tasks;
using WeatherForecast.Domain.Network;
using WeatherForecast.Domain.Request;
using WeatherForecast.Domain.Response;
using WeatherForecast.Service.Contract;

namespace WeatherForecast.ViewModel
{
    public class DataVM : BaseVM
    {
        IDataService dataService;
        public WeatherRequest weatherRequest = new WeatherRequest();
        public WeatherResponse WeatherResponse = new WeatherResponse();

        public DataVM(IDataService dataService)
        {
            this.dataService = dataService;
        }

        public Task GetWeatherData(WeatherRequest weatherRequest, Action<WeatherResponse> onSuccess, Action<ApiError> onError)
        {
            return dataService.GetWeatherData(weatherRequest, response =>
            {
                onSuccess?.Invoke(response);
            }, onError);
        }
    }
}