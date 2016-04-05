class Calculator
  def add(input)
    input.split(",").map(&:to_i).inject(0, :+)
  end
end