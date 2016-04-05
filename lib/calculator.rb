class Calculator
  def add(input)
    return input.to_i if input.length < 2
    temp_array = input.split(",")
    temp_array[0].to_i + temp_array[1].to_i
  end
end