CLASS zcl_fill_invoice_tnd DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_invoice_tnd IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    out->write( cl_abap_context_info=>get_user_technical_name( ) ).

    DELETE FROM zdt_com_inv_tnd.
    MODIFY zdt_com_inv_tnd FROM TABLE @( value #( ( invoice_id    = '1111'
                                                    customer_name = 'Customer 1'
                                                    inv_amount    = '11.11'
                                                    currency      = 'USD'
                                                    department    = '01'
                                                    create_by     = cl_abap_context_info=>get_system_date( )
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '2222'
                                                    customer_name = 'Customer 2'
                                                    inv_amount    = '22.22'
                                                    currency      = 'USD'
                                                    department    = '01'
                                                    create_by     = cl_abap_context_info=>get_system_date( )
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '3333'
                                                    customer_name = 'Customer 3'
                                                    inv_amount    = '33.33'
                                                    currency      = 'YEN'
                                                    department    = '02'
                                                    create_by     = cl_abap_context_info=>get_system_date( )
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '4444'
                                                    customer_name = 'Customer 4'
                                                    inv_amount    = '444.44'
                                                    currency      = 'YEN'
                                                    department    = '03'
                                                    create_by     = cl_abap_context_info=>get_system_date( )
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )


                                                  ( invoice_id    = '5555'
                                                    customer_name = 'Customer 5'
                                                    inv_amount    = '555.55'
                                                    currency      = 'EUR'
                                                    department    = '04'
                                                    create_by     = cl_abap_context_info=>get_system_date( )
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '6666'
                                                    customer_name = 'Customer 6'
                                                    inv_amount    = '666.66'
                                                    currency      = 'USD'
                                                    department    = '01'
                                                    create_by     = '6666'
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '7777'
                                                    customer_name = 'Customer 7'
                                                    inv_amount    = '777.77'
                                                    currency      = 'EUR'
                                                    department    = '05'
                                                    create_by     = '7777'
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '8888'
                                                    customer_name = 'Customer 8'
                                                    inv_amount    = '88.88'
                                                    currency      = 'YEN'
                                                    department    = '03'
                                                    create_by     = '8888'
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '9999'
                                                    customer_name = 'Customer 9'
                                                    inv_amount    = '99.99'
                                                    currency      = 'USD'
                                                    department    = '06'
                                                    create_by     = '9999'
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

                                                  ( invoice_id    = '1000'
                                                    customer_name = 'Customer 10'
                                                    inv_amount    = '10.00'
                                                    currency      = 'MXN'
                                                    department    = '06'
                                                    create_by     = '1000'
                                                    create_date   = cl_abap_context_info=>get_system_date( ) )

     ) ).


  ENDMETHOD.

ENDCLASS.
