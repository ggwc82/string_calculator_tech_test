class Calculator
  def add(input)
    temp_array = input.split(",")
    sum = 0;
    temp_array.each do |element|
      sum += element.to_i
    end
    sum
  end
end