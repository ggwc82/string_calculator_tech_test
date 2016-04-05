class Calculator
  def add(input)
    cleaned_input = input.gsub("\n", ",")
    cleaned_input.split(",").map(&:to_i).inject(0, :+)
  end
end