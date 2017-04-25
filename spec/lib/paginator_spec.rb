require 'paginator'

describe Paginator, '#paginate' do
  context 'with a given page number' do
    it 'calculates the correct start and finish values' do
      start, finish = Paginator.new(2, 100).paginate
      expect(start).to eq(101)
      expect(finish).to eq(200)
    end
    it 'calculates the start and finish with the correct limit' do
      start, finish = Paginator.new(2, 7).paginate
      expect(start).to eq(8)
      expect(finish).to eq(14)
    end
  end
  context 'with a given an invalid page number' do
    it 'reverts to the first page' do
      start, finish = Paginator.new('iAmNotAPage', 100).paginate
      expect(start).to eq(1)
      expect(finish).to eq(100)
    end
  end
  context 'with a given an invalid limit' do
    it 'reverts to the default limit' do
      start, finish = Paginator.new(3, 'lemons 🍋').paginate
      expect(start).to eq(201)
      expect(finish).to eq(300)
    end
  end
end
