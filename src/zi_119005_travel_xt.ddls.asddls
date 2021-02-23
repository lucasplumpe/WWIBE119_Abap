@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 1: Travel_xt'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119005_Travel_xt
  as select from ZI_119005_Travel
{
  key TravelId,
      CustomerId,
      BeginDate,
      EndDate,
      CurrencyCode,
      case
          when Status = 'B' then 'Booked'
          when Status = 'N' then 'New'
          when Status = 'P' then 'Planned'
          else 'Undefined'
      end as status
}
