require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end

  it 'returns "fizzbuzz" when passed a number divisible by 3 and 5' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end

  it 'returns 7 when 7 is passed' do
    expect(fizzbuzz(7)).to eq 7
  end

  it 'returns fizz when it hits a multiple of 3 between 1-100' do
    counter = 1 
    100.times do 
      if counter % 5 == 0 && counter % 3 == 0
        expect(fizzbuzz(counter)).to eq 'fizzbuzz'
      elsif counter % 3 == 0
        expect(fizzbuzz(counter)).to eq 'fizz'
      elsif counter % 5 == 0 
        expect(fizzbuzz(counter)).to eq 'buzz'
      else 
        expect(fizzbuzz(counter)).to eq counter
      end
      counter += 1
    end
  end
end
