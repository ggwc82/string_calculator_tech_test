require 'calculator'

describe Calculator do
  describe '#add' do
    it 'will return 0 for an empty string input' do
      calculator = Calculator.new
      expect(calculator.add("")).to eq(0)
    end
  end
end