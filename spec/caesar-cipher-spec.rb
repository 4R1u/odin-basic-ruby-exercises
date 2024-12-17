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
