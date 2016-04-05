class Calculator
  def add(input)
    cleaned_input = input.gsub("\n", ",")
    raise ArgumentError, 'incorrect input format' if cleaned_input.include?(",,")
    cleaned_input.split(",").map(&:to_i).inject(0, :+)
  end
end