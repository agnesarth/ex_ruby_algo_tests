def ceasar_cipher (a, n)
  
  list = a.split(//) 
  array = []

  list.map! do |str|
    if (str.ord >= 65 && str.ord <= 90) || (str.ord >= 97 && str.ord <= 122) 
      new_str = (str.ord + n)

      if (new_str >= 65 && new_str <= 90) || (new_str >= 97 && new_str <= 122) 
        array << new_str.chr
      else
        array << (new_str - 26).chr
      end
    else
      array << str
    end   
  end
  return array.join
end

