class Calculator
  def add(input)
    if input.length < 2
      input.to_i
    else
      temp_array = input.split(",")
      temp_array[0].to_i + temp_array[1].to_i
    end
  end
end