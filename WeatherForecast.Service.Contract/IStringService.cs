using System;
namespace WeatherForecast.Service.Contract
{
    public interface IStringService
    {
        /// <summary>
        /// Get a string resource by name
        /// </summary>
        /// <param name="name">the name/key of the desired resource</param>
        /// <returns></returns>
        string GetString(string name);
    }
}
