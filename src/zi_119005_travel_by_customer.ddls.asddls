@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel_by_customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119005_Travel_by_customer
  as select from ZI_119005_Travel_xt
{
  key concat_with_space(TravelId, Description, 1) as Travel,
      CustomerId,
      BeginDate,
      EndDate,
      dats_days_between(BeginDate, EndDate)                as DatsDaysBetween,
      Price,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      status
}
