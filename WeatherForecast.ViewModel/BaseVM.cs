using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using FluentValidation;
using FluentValidation.Results;
using WeatherForecast.Domain;
using WeatherForecast.Domain.Network;
using WeatherForecast.Service.Contract;

namespace WeatherForecast.ViewModel
{
    public abstract class BaseVM : INotifyPropertyChanged
    {
        public ApiError NetworkError { get; set; }

        public bool HasErrors => Errors.Any();
        public bool HasError(string key) => Errors.ContainsKey(key);
        public Func<IValidator, ValidationResult> OnValidate { get; set; }

        public Dictionary<string, string> Errors { get; private set; } = new Dictionary<string, string>();

        public void SetValidationErrors(ValidationResult validationResult)
        {
            Errors.Clear();
            foreach (var failure in validationResult.Errors)
            {
                if (Errors.ContainsKey(failure.PropertyName))
                    continue;
                Errors[failure.PropertyName] = failure.ErrorMessage;
            }
        }

        public virtual bool Validate<TModel>(TModel model)
            where TModel : IValidated
        {
            ValidationResult validationResult = OnValidate == null ?
            model.Validate() : OnValidate((IValidator)model);
            SetValidationErrors(validationResult);
            return validationResult.IsValid;
        }

        protected virtual void RaisePropertyChanged([CallerMemberName] string property = "")
        {
            RaisePropertyChanged(false, property);
        }

        public bool IsModified { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void RaisePropertyChanged(bool causesModification,
            [CallerMemberName] string property = "")
        {
            IsModified = IsModified || causesModification;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(property));
        }

        Lazy<IStringService> _stringService = new Lazy<IStringService>(ServiceProvider.Resolve<IStringService>);
        protected IStringService StringService => _stringService.Value;
        public string ValidationFailureMessage => "One or more validation errors occured";
    }

    public abstract class BaseVM<TModel> : BaseVM
        where TModel : new()
    {
        public TModel Model { get; protected set; } = new TModel();
        public virtual void Refresh()
        {
            Model = new TModel();
        }
    }
}
