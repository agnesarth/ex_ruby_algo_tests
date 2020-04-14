def is_multiple_of_3_or_5(n)
  (n % 3 == 0) || (n % 5 == 0)? true : false
end

def sum_of_3_or_5_multiples(final_number)
  if final_number.is_a?(Integer) && final_number >= 0 
    final_number = final_number - 1
    while final_number >= 0 do
      if is_multiple_of_3_or_5(final_number)
        sum = sum + final_number
        final_number = final_number -1
      else 
        final_number = final_number -1
      end
    end
    return sum
  else
    return "Yo ! Je ne prends que les entiers naturels. TG"
  end 
end

def perform
  sum_of_3_or_5_multiples(1001)
end

perform