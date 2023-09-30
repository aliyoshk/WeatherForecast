using System;
using System.Threading.Tasks;
using WeatherForecast.Domain.Network;
using WeatherForecast.Domain.Request;
using WeatherForecast.Domain.Response;
using WeatherForecast.Service.Contract;

namespace WeatherForecast.Service.Mock
{
    public class MockDataService : IDataService
    {
        public async Task GetWeatherData(WeatherRequest weatherRequest, Action<WeatherResponse> onSuccess, Action<ApiError> onError)
        {
            await Task.Delay(200);
            onSuccess.Invoke(new WeatherResponse
            {

            });
        }
    }
}