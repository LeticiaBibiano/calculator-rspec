require './calculator'

RSpec.describe Calculator do
  subject { Calculator.new(10, 5)}

  describe '#new' do
    it { expect(subject).to be_instance_of Calculator }
  end

  describe '#add' do
    it 'add two numbers' do
      expect(subject.add).to eq 15
    end
  end

  describe '#subtract' do
    it 'subtract two numbers' do
      expect(subject.subtract).to eq 5
    end
  end

  describe '#multiply' do
    it 'multiplies two numbers' do
      expect(subject.multiply).to eq 50
    end
  end

  describe '#divide' do
    context 'when the divisor is non-zero' do
      it 'divide two numbers' do
        expect(subject.divide).to eq 2
      end
    end

    context 'when the divisor is equal to zero' do
      subject { Calculator.new(10, 0)}

      it 'displays impossible division by zero message' do
        expect(subject.divide).to eq 'impossible to divide by zero'
      end
    end
  end
end