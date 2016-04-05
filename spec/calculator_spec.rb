require 'calculator'

describe Calculator do

  subject(:calculator) { Calculator.new }
  
  describe '#add' do
    it 'will return 0 for an empty string input' do
      expect(calculator.add("")).to eq(0)
    end

    it 'will return an integer for a single string number' do
      expect(calculator.add("8")).to eq(8)
    end

    it 'will return the sum as an integer for two string numbers' do
      expect(calculator.add("8,2")).to eq(10)
    end
  end
end