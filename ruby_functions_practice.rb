def return_10()
  return 10
end

def add(a, b)
add_result = a + b
end

def subtract(a, b)
  subtract_result = a - b
end

def multiply(a, b)
  multiply_result = a * b
end

def divide(a, b)
  divide_result = a / b
end

def length_of_string(string)
  string = string.length
end

def join_string(string_1, string_2)
  joined_string = string_1 + string_2
end

def add_string_as_number(string1, string2)
  add_results = string1.to_i + string2.to_i
end

def number_to_full_month_name(a)

case a
when 1 
return "January"
when 2 
return "February"
when 3 
return "March"
when 4 
return "April"
when 5 
return "May"
when 6 
return "June"
when 7 
return "July"
when 8
return "August"
when 9
return "September"
when 10 
return "October"
when 11
return "November"
when 12
return "December"
else 
  return  nil
end
  end

  def number_to_short_month_name(a)

    case a
    when 1 
    return "Jan"
    when 2 
    return "Feb"
    when 3 
    return "Mar"
    when 4 
    return "Apr"
    when 5 
    return "May"
    when 6 
    return "Jun"
    when 7 
    return "Jul"
    when 8
    return "Aug"
    when 9
    return "Sep"
    when 10 
    return "Oct"
    when 11
    return "Nov"
    when 12
    return "Dec"
    else 
      return  nil
  end
end

def volume_of_cube(a)
  return a ** 3
end

def volume_of_sphere(a)
  return (4*Math::PI*(a**3)/3).round()
end

def fahrenheit_to_celsius(a)
  return celsius = (((a - 32) * 5) / 9).round(0)
end


# extra ------


def oddoreven(a)
  if a % 2 == 0
    return true
  else 
    return false
end
end

def hungry(level) 
  if level >= 9
  return "steak"
  elsif level >= 7
  return "chicken"
  elsif level >= 4
  return "soup"
  else 
  return "salad"
 end
end

def smiling(aSmile, bSmile)
  if aSmile + bSmile == true
    return "trouble"
  elsif aSmile + bSmile == false
    return "trouble"
  else
    return nil
end      
    


end
