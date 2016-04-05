class Calculator
  def add(string)
    string = substitute_deliminator(string)
    cleaned_input = parse_input(string)
    raise ArgumentError, 'incorrect input format' if incorrect_input?(cleaned_input)
    sum(cleaned_input)
  end

  private

  def parse_input(string)
    string.gsub("\n", ",")
  end

  def incorrect_input?(string)
    string.include?(",,")
  end

  def sum(array)
    array.split(",").map(&:to_i).inject(0, :+)
  end

  def substitute_deliminator(string)
    string.gsub("//;\n", "").gsub(";", ",")
  end
end