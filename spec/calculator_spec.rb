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

    it 'will handle an unknown amount of numbers' do
      expect(calculator.add("1,2,3,4,5,6,7,8,9,10")).to eq(55)
    end

    it 'can handle new lines between numbers (instead of commas)' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'can support a different defined delimiter (;)' do
      expect(calculator.add("//;\n1;2")).to eq (3)
    end

    it 'can support a different defined delimiter (!)' do
      expect(calculator.add("//!\n1!2")).to eq (3)
    end
  end
end