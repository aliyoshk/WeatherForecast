﻿using System;
using Phygital.Services.Implementation.Base;

namespace WeatherForecast.Service.Implementation.Base
{
    public abstract class ApiService
    {
        protected static RestClient ApiClient { get; set; } = new RestClient();
    }
}
