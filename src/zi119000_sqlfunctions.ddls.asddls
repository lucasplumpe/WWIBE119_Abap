@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'SqlFunctions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI119000_SqlFunctions
  as select from /dmo/connection
{

  abs(-5)                                                  as Abs1,
  division(distance,2,2)                                   as Divisions1,
  concat_with_space('Hallo','Welt', 1)                     as ConcatWithSpace1,
  replace('Hallo', 'a', 'e')                               as Replace1,
  distance                                                 as OldDistance,
  distance_unit                                            as OldDistnceUnit,
  @Semantics.quantity.unitOfMeasure: 'NewDistanceUnit'
  unit_conversion(quantity => distance,
                   source_unit => distance_unit,
                   target_unit => cast('MI' as abap.unit)) as NewDistance,
  cast('MI' as abap.unit)                                  as NewDistanceUnit,
  dats_days_between('20210201', '20210302')                as DatsDaysBetween,
  tstmp_current_utctimestamp()                             as TstmpCurrentUtcTimestamp1
}
