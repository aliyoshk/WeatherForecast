using System;
using System.Threading.Tasks;
using WeatherForecast.Config;
using WeatherForecast.Domain.Network;
using WeatherForecast.Domain.Request;
using WeatherForecast.Domain.Response;
using WeatherForecast.Service.Contract;
using WeatherForecast.Service.Implementation.Base;

namespace WeatherForecast.Service.Implementation
{
    public class DataService : ApiService, IDataService
    {  
        public Task GetWeatherData(WeatherRequest weatherRequest, Action<WeatherResponse> onSuccess, Action<ApiError> onError)
        {
            return ApiClient.Get(new ApiRequest
            {
                Path = string.Format(Urls.GETWEATHER, weatherRequest.CityName)

            }, onSuccess, onError);
        }
    }
}