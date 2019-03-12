*"* use this source file for your ABAP unit test classes
class ltcl_test definition risk level harmless duration short for testing.

  private section.

    methods do_the_test for testing.
    methods do_the_fail for testing.

endclass.


class ltcl_test implementation.

  method do_the_test.
    cl_abap_unit_assert=>assert_true( act = abap_true msg = 'I am supposed to succceed' ).
  endmethod.

  method do_the_fail.
    cl_abap_unit_assert=>assert_true( act = abap_false msg = 'I am supposed to fail' ).
  endmethod.

endclass.
