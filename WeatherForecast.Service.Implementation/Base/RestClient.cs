using System;
using System.IO;
using System.Net;
using System.Threading.Tasks;
using Flurl;
using Flurl.Http;
using Newtonsoft.Json;
using WeatherForecast.Config;
using WeatherForecast.Domain.Network;

namespace Phygital.Services.Implementation.Base
{
    public class RestClient
    {
        string endpointCalled;

        public static bool ReIssueTokenOnError = true;

        static RestClient()
        {
            FlurlHttp.Configure(config =>
            {
                config.Timeout = TimeSpan.FromSeconds(Constants.RequestTimeout);
                config.BeforeCall = (call) =>
                {
                    //call.Request.Headers.Remove("token");
                    //call.Request.Headers.Remove("Authorization");
                    //call.Request.Headers.Remove("alat-client-apikey");
                };
                config.AfterCall = (call) =>
                {

                };
            });
        }

        internal IFlurlRequest CreateRequest(ApiRequest apiRequest)
        {
            //Temp
            endpointCalled = apiRequest.Path;
            return new Url(apiRequest.Path)
                   .SetQueryParams(apiRequest.QueryParams)
                   .WithCookies(apiRequest.Cookies)
                   .WithTimeout(Constants.RequestTimeout)
                   .WithHeaders(apiRequest.Headers);
        }

        internal async Task Delete<T>(ApiRequest request, Action<T> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                    .DeleteAsync()
                    .ReceiveJson<T>();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task Delete(ApiRequest request, Action onSuccess, Action<ApiError> onError)
        {
            try
            {
                await CreateRequest(request).DeleteAsync();
                onSuccess?.Invoke();
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task GetBytes(ApiRequest request, Action<byte[]> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                   .GetBytesAsync();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task Get<T>(ApiRequest request, Action<T> onSuccess, Action<ApiError> onError)
        {

            try
            {
                var response = await CreateRequest(request)
                    .GetAsync().ReceiveJson<T>();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                Console.WriteLine("fail client is " + ex.Message);
                await HandleError(onError, ex);
            }
        }

        internal async Task GetString(ApiRequest request, Action<string> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                    .GetAsync().ReceiveString();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task Post<T>(ApiRequest request, Action<T> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                    .PostJsonAsync(request.Payload).ReceiveJson<T>();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                Console.WriteLine("failed is " + ex);
                await HandleError(onError, ex);
            }
        }

        internal async Task Post(ApiRequest request, Action onSuccess, Action<ApiError> onError)
        {
            try
            {
                await CreateRequest(request)
                   .PostJsonAsync(request.Payload);
                onSuccess?.Invoke();
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task PostForString(ApiRequest request, Action<string> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                    .PostJsonAsync(request.Payload).ReceiveString();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task PostUrlEncoded<T>(ApiRequest request, Action<T> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                     .PostUrlEncodedAsync(request.Payload)
                     .ReceiveJson<T>();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }
        internal async Task PostUrlEncoded(ApiRequest request, Action onSuccess, Action<ApiError> onError)
        {
            try
            {
                await CreateRequest(request)
                    .PostUrlEncodedAsync(request.Payload);
                onSuccess?.Invoke();
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task Put<T>(ApiRequest request, Action<T> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                    .PutJsonAsync(request.Payload)
                    .ReceiveJson<T>();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task Put(ApiRequest request, Action onSuccess, Action<ApiError> onError)
        {
            try
            {
                await CreateRequest(request)
                   .PutJsonAsync(request.Payload);
                onSuccess?.Invoke();
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task Patch<T>(ApiRequest request, Action<T> onSuccess, Action<ApiError> onError)
        {
            try
            {
                var response = await CreateRequest(request)
                    .PatchJsonAsync(request.Payload)
                    .ReceiveJson<T>();
                onSuccess?.Invoke(response);
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        internal async Task Patch(ApiRequest request, Action onSuccess, Action<ApiError> onError)
        {
            try
            {
                await CreateRequest(request)
                   .PatchJsonAsync(request.Payload);
                onSuccess?.Invoke();
            }
            catch (Exception ex)
            {
                await HandleError(onError, ex);
            }
        }

        private async Task<string> HandleHttpError(FlurlHttpException ex)
        {
            Console.WriteLine(JsonConvert.SerializeObject(ex, Formatting.Indented));

            return await HandleHttpError(null, ex);
        }

        private async Task<string> HandleHttpError(Action<ApiError> onError, FlurlHttpException ex)
        {
            ApiError error = new ApiError() { StatusCode = (HttpStatusCode?)ex.Call.Response.StatusCode };
            try
            {
                if (ex.InnerException?.GetType() == typeof(TaskCanceledException))
                {
                    error.Message = "We can't complete this action because there was a timeout.";
                    error.StatusCode = System.Net.HttpStatusCode.RequestTimeout;
                }
                else if (ex.Call.Response == null)
                {
                    error.Message = "Oops! Looks like the server is unreachable. You may need to check your network and try again.";
                }
                else if ((int)ex.Call.Response.StatusCode == (int)System.Net.HttpStatusCode.BadRequest)
                {
                    error = await ex.GetResponseJsonAsync<ApiError>();
                }
                else if ((int)ex.Call.Response.StatusCode == (int)System.Net.HttpStatusCode.Forbidden)
                {
                    error.Message = "Oops! You are not permitted to access this resource.";

                }
                else if ((int)ex.Call.Response.StatusCode == (int)System.Net.HttpStatusCode.GatewayTimeout || (int)ex.Call.Response.StatusCode == (int)HttpStatusCode.BadGateway)
                {
                    error.Message = "The server took too long responding to this request.";

                }
                else if ((int)ex.Call.Response.StatusCode == (int)System.Net.HttpStatusCode.InternalServerError)
                {
                    Console.WriteLine("code is " + ex.Call.Response.StatusCode);
                    error.Message = "Oops! Something went wrong. Please try again.";

                }
                else if ((int)ex.Call.Response.StatusCode == (int)System.Net.HttpStatusCode.ServiceUnavailable)
                {
                    error.Message = "Oops! Looks like the server is unreachable. You may need to check your network and try again.";
                }
                else
                {
                    try
                    {
                        var model = await ex.GetResponseJsonAsync<ApiError>();
                        if (model != null)
                        {
                            error.Message = model.ConcatenatedErrors;
                        }
                        else
                        {
                            error.Message =  "O Oh! An unknown error has occurred.";

                        }
                    }
                    catch
                    {
                        error.Message = await ex.GetResponseStringAsync();
                    }
                }
            }
            catch (Exception e)
            {
                error.Message = e.Message;
            }

            onError?.Invoke(error);

            return error.ConcatenatedErrors;
        }

        async Task HandleError(Action<ApiError> onError, Exception ex)
        {
            Console.WriteLine("no value error is " + ex + " " + ex.Message + " " + ex.Data.ToString());
            if (ex is FlurlHttpException)
            {
                await HandleHttpError(onError, ex as FlurlHttpException);
            }
            else if (ex?.GetType() == typeof(NullReferenceException))
            {
                onError?.Invoke(new ApiError
                {
                    Message = "No value found",
                });
            }
            else
                onError?.Invoke(new ApiError
                {
                    Message = "App Error: " + ex.Message,
                    StatusCode = System.Net.HttpStatusCode.BadRequest
                });
        }
    }
}