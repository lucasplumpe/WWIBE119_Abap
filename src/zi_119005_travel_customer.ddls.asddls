@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119005_Travel_customer  as select from ZI_119005_Travel_xt
  association [1] to /dmo/customer as _customer on ZI_119005_Travel_xt.CustomerId = _customer.customer_id
{
  key TravelId,
      Description,
      CustomerId,
      BeginDate,
      EndDate,
      Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Status,
      _customer
}
