require 'checkout'

describe Shop do

  subject(:shop) { Shop.new }

  describe '.checkout()' do

    it 'returns -1 when given lowercase letter' do
      expect(shop.checkout('a')).to eq -1
    end

    it 'returns -1 when given a number' do
      expect(shop.checkout(18)).to eq -1
    end

    it 'returns -1 when given a string with a lowercase letter in it' do
      expect(shop.checkout('aAAA')).to eq -1
    end

    it 'returns -1 when given a string of random characters' do
      expect(shop.checkout('-B8x')).to eq -1
    end

    it 'returns 50 when given A' do
      expect(shop.checkout('A')).to eq 50
    end

    it 'returns 30 when given B' do
      expect(shop.checkout('B')).to eq 30
    end

    it 'returns 20 when given C' do
      expect(shop.checkout('C')).to eq 20
    end

    it 'returns 15 when given D' do
      expect(shop.checkout('D')).to eq 15
    end

    it 'returns 100 when given AA' do
      expect(shop.checkout('AA')).to eq 100
    end

    it 'returns 80 when given AB' do
      expect(shop.checkout('AB')).to eq 80
    end

    it 'returns 130 when given AAA' do
      expect(shop.checkout('AAA')).to eq 130
    end

    it 'returns 45 when given BB' do
      expect(shop.checkout('BB')).to eq 45
    end

    it 'returns 145 when given AAAD' do
      expect(shop.checkout('AAAD')).to eq 145
    end

    it 'returns 175 when given AAABB' do
      expect(shop.checkout('AAABB')).to eq 175
    end

    it 'returns 260 when given AAAAAA' do
      expect(shop.checkout('AAAAAA')).to eq 260
    end

    it 'returns 90 when given BBBB' do
      expect(shop.checkout('BBBB')).to eq 90
    end

    it 'returns 130 when given BBBBCC' do
      expect(shop.checkout('BBBBCC')).to eq 130
    end

  end
end
