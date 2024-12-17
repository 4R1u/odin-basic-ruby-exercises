require_relative '../caesar-cipher'

describe '#shift_char_right' do
  context 'shifts by 3 letters to the right' do
    it "returns 'd'" do
      expect(shift_char_right('a', 3)).to eq('d')
    end

    it "returns 'b'" do
      expect(shift_char_right('y', 3)).to eq('b')
    end
  end
end

describe '#caesar_cipher' do
  context 'when number is small and positive' do
    it "returns 'Uryyb, Jbeyq!'" do
      expect(caesar_cipher('Hello, World!', 13)).to eq('Uryyb, Jbeyq!')
    end
  end

  context 'when number is large and positive' do
    it "returns 'Uryyb, Jbeyq!'" do
      expect(caesar_cipher('Hello, World!', 39)).to eq('Uryyb, Jbeyq!')
    end
  end

  context 'when number is small and negative' do
    it "returns 'Uryyb, Jbeyq!'" do
      expect(caesar_cipher('Hello, World!', -13)).to eq('Uryyb, Jbeyq!')
    end
  end

  context 'when number is large and negative' do
    it "returns 'Uryyb, Jbeyq!'" do
      expect(caesar_cipher('Hello, World!', -39)).to eq('Uryyb, Jbeyq!')
    end
  end
end
