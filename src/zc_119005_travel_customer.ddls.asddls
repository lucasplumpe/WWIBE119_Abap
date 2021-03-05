@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119005_Travel_customer
  as select from ZI_119005_Travel_customer
{

  key TravelId,
      Description,
      CustomerId,
      /* Associations */
      _customer.first_name,
      _customer.last_name,
      BeginDate,
      EndDate,
      Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Status
}
