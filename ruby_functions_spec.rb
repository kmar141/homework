require( 'minitest/autorun' )
require_relative( 'ruby_functions_practice' )

class Functions_Practice < MiniTest::Test

  def test_return_10()
    return_10_result = return_10()
    assert_equal( 10, return_10_result )
  end

  def test_add()
    add_result = add( 1, 2 )
    assert_equal( 3, add_result )
  end

  def test_subtract()
    subtract_result = subtract( 10, 5 )
    assert_equal( 5, subtract_result )
  end

  def test_multiply()
    multiply_result = multiply( 4, 2 )
    assert_equal( 8, multiply_result )
  end

  def test_divide()
    divide_result = divide( 10, 2 )
    assert_equal( 5, divide_result )
  end

  def test_length_of_string()
    test_string = "A string of length 21"
    length_of_string = length_of_string( test_string )
    assert_equal( 21, length_of_string )
  end

  def test_join_string()
    string_1 = "Mary had a little lamb, "
    string_2 = "it's fleece was white as snow"
    joined_string = join_string( string_1, string_2 )
    assert_equal( "Mary had a little lamb, it's fleece was white as snow", joined_string )
  end

  def test_add_string_as_number()
    add_result = add_string_as_number( "1", "2" )
    assert_equal( 3, add_result )
  end

  def test_number_to_full_name()
    first_month_string = number_to_full_month_name( 1 )
    third_month_string = number_to_full_month_name( 3 )
    ninth_month_string = number_to_full_month_name( 9 )
    assert_equal( "January", first_month_string )
    assert_equal( "March", third_month_string )
    assert_equal( "September", ninth_month_string )
  end

  def test_substring()
    first_month_string = number_to_short_month_name( 1 )
    third_month_string = number_to_short_month_name( 3 )
    ninth_month_string = number_to_short_month_name( 9 )
    assert_equal( "Jan", first_month_string )
    assert_equal( "Mar", third_month_string )
    assert_equal( "Sep", ninth_month_string )
  end



  # #Further

  #Given the length of a side of a cube calculate the volume
  def test_volume_of_cube()
     cube_result = 8 ** 3
     assert_equal( cube_result, 512 ) 
  end

  #Given the radius of a sphere calculate the volume
  def test_volume_of_sphere()
    assert_equal( 34, volume_of_sphere(2) )
  end

  #Given a value in farenheit, convert this into celsius.
  def test_fahrenheit_to_celsius()
    assert_equal( fahrenheit_to_celsius(37.0), 3 )
  end

  #when a number is even it's value is true
  def test_oddoreven()
    assert_equal( true, oddoreven(4) )
    assert_equal( false, oddoreven(7) )
  end

  #hunger levels
  def test_hunger()
    assert_equal( "steak", hungry(10) )
    assert_equal( "chicken", hungry(8) )
    assert_equal( "soup", hungry(5) )
    assert_equal( "salad", hungry(1) )
  end

  #monkey smiles
  def test_smiling
    assert_equal( smiling(true), smiling(true), "trouble" )  
    assert_equal( smiling(true), smiling(false), nil )
    assert_equal( smiling(false), smiling(true), nil )
    assert_equal( smiling(false), smiling(false), "trouble" )
  end

end  
