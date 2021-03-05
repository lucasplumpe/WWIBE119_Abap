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
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast(cast(TotalPrice as abap.dec(16,2)) - cast(BookingFee as abap.dec(16,2)) as abap.curr(16,2)) as Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Description,
      case Status
        when 'B' then 'Booked'
        when 'N' then 'New'
        when 'P' then 'Planned'
        else ''
      end                                                                                              as Status
}
