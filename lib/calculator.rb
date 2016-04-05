class Calculator
  def add(input)
    temp_array = input.split(",").map { |element| element.to_i }
    temp_array.inject(0, :+)
  end
end