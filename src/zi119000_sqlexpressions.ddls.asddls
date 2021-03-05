@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'SqlExpressions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI119000_SqlExpressions
  as select from /dmo/connection
{

  key carrier_id                        as CarrierId,
  key connection_id                     as ConnectionId,
      airport_from_id                   as AirportFromId,
      airport_to_id                     as AirportToId,
      departure_time                    as DepartureTime,
      arrival_time                      as ArrivalTime,
      distance                          as Distance,
      distance + distance               as Doubledistance,
      distance * distance               as Doubledistance2,
      cast(distance as abap.fltp) / 2.0 as HalfDistance,
      distance_unit                     as DistanceUnit,
      case distance_unit
        when 'KM' then 'Kilometer'
        when 'MI' then 'Meilen'
        else ''
      end                               as DistanceUnitTest,
      case when distance > 2000 and distance_unit = 'KM' then 'Langstreckenflug'
           when distance > 1243 and distance_unit = 'MI' then 'Langstreckenflu'
           else 'Kurzstreckenflug'
      end as DistanceCategory
}
