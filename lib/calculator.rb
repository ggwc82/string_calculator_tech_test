class Calculator
  def add(string)
    string = substitute_deliminator(string)
    cleaned_input = parse_input(string)
    sum(cleaned_input)
  end

  private

  def parse_input(string)
    string.gsub("\n", ",")
  end

  def sum(array)
    array.split(",").map(&:to_i).inject(0, :+)
  end

  def substitute_deliminator(string)
    #deliminator = string[2] if string.include?("//")
    string.gsub("//;\n", "").gsub(";", ",")
  end
end