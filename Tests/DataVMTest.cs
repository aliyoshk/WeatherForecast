using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading.Tasks;
using Moq;
using WeatherForecast.Domain.Network;
using WeatherForecast.Domain.Request;
using WeatherForecast.Domain.Response;
using WeatherForecast.Service.Contract;
using WeatherForecast.ViewModel;
using Autofac.Core;

namespace Tests
{
	public class DataVMTest
	{
        private DataVM dataVM;
        private Mock<IDataService> dataService;

        public DataVMTest()
        {
            dataService = new Mock<IDataService>();
            dataVM = new DataVM(dataService.Object);
        }

        [TestMethod]
        public async Task GetWeatherData_Success()
        {
            // Arrange
            var weatherRequest = new WeatherRequest();
            var expectedResponse = new WeatherResponse();
            dataService.Setup(d => d.GetWeatherData(weatherRequest, It.IsAny<Action<WeatherResponse>>(), It.IsAny<Action<ApiError>>()))
                          .Callback<WeatherRequest, Action<WeatherResponse>, Action<ApiError>>((request, onSuccess, onError) =>
                          {
                              onSuccess(expectedResponse);
                          });

            // Act
            WeatherResponse actualResponse = null;
            await dataVM.GetWeatherData(weatherRequest, response => actualResponse = response, error => { });

            // Assert
            Assert.AreEqual(expectedResponse, actualResponse);
        }

        [TestMethod]
        public async Task GetWeatherData_Error()
        {
            // Arrange
            var weatherRequest = new WeatherRequest();
            var expectedError = new ApiError();
            dataService.Setup(d => d.GetWeatherData(weatherRequest, It.IsAny<Action<WeatherResponse>>(), It.IsAny<Action<ApiError>>()))
                          .Callback<WeatherRequest, Action<WeatherResponse>, Action<ApiError>>((request, onSuccess, onError) =>
                          {
                              onError(expectedError);
                          });

            // Act
            ApiError actualError = null;
            await dataVM.GetWeatherData(weatherRequest, response => { }, error => actualError = error);

            // Assert
            Assert.AreEqual(expectedError, actualError);
        }
    }
}

