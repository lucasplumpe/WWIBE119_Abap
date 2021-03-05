@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 1: Travel_xt'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119005_Travel_xt
  as select from ZI_119005_Travel
{
  key TravelId,
      Description,
      CustomerId,
      BeginDate,
      EndDate,
      cast(TotalPrice as abap.fltp) - cast(BookingFee as abap.fltp) as Price, 
      BookingFee,
      TotalPrice,
      CurrencyCode,
      case
              when Status = 'B' then 'Booked'
              when Status = 'N' then 'New'
              when Status = 'P' then 'Planned'
              else 'Undefined'
          end as status

}
