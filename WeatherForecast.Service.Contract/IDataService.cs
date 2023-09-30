using System;
using System.Threading.Tasks;
using WeatherForecast.Domain.Network;
using WeatherForecast.Domain.Request;
using WeatherForecast.Domain.Response;

namespace WeatherForecast.Service.Contract
{
    public interface IDataService
    {
        Task GetWeatherData(WeatherRequest weatherRequest, Action<WeatherResponse> onSuccess, Action<ApiError> onError);
    }
}
 