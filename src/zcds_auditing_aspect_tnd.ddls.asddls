@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl : {
       authorizationCheck: #CHECK,
       auditing.type : #CUSTOM,
       auditing.specification: 'TND' }
@EndUserText.label: 'Auditing Aspect'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_auditing_aspect_TND
  as select from zdt_com_inv_tnd
{
  key invoice_id    as InvoiceId,
      customer_name as CustomerName,
      @Semantics.amount.currencyCode: 'Currency'
      inv_amount    as InvAmount,
      currency      as Currency,
      department    as Department,
      create_by     as CreateBy,
      create_date   as CreateDate
}
