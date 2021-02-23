@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 1: Travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119005_Travel
  as select from /dmo/travel
{
  key travel_id     as TravelId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      currency_code as CurrencyCode,
      status        as Status
}
where
  status <> 'C'
