@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View Annotations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119005_Annotations
  as select from /dmo/flight
{
       @UI: {
       selectionField: [{ position: 10}],
       lineItem: [{ position: 10}],
       identification: [{ position: 10 }]
       }
  key carrier_id     as CarrierId,
      @UI: {
       selectionField: [{ position: 20}],
       lineItem: [{ position: 20}],
       identification: [{ position: 20 }]
       }
  key connection_id  as ConnectionId,
      @UI: {
       selectionField: [{ position: 30}],
       lineItem: [{ position: 30}],
       identification: [{ position: 30 }]
       }
  key flight_date    as FlightDate,
  
      @UI: {
       lineItem: [{ position: 40}],
       identification: [{ position: 40 }]
       }
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price          as Price,
      
      @UI.hidden: true
      currency_code  as CurrencyCode,
      
      @UI: {
       selectionField: [{ position: 50}],
       lineItem: [{ position: 50}],
       identification: [{ position: 50 }]
       }
      plane_type_id  as PlaneTypeId,
      
      @UI: {
       identification: [{ position: 60 }]
       }
      seats_max      as SeatsMax,
      
      @UI: {
       identification: [{ position: 70 }]
       }
      seats_occupied as SeatsOccupied
}
