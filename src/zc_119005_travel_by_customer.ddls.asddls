@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel_by_customer'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119005_Travel_by_customer
  as select from ZI_119005_Travel_by_customer
{
  key CustomerId      as CustomerId,
      count(*)        as Number_of_travels,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalPrice) as TotalExpenses,
      CurrencyCode
}
group by
  CustomerId,
  CurrencyCode
having
  count(
    *
  ) > 10
