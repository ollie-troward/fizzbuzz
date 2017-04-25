require 'paginator'

describe Paginator, '#paginate' do
  context 'with a given page number' do
    it 'calculates the correct start and finish values' do
      start, finish = Paginator.new(2).paginate
      expect(start).to eq(101)
      expect(finish).to eq(200)
    end
  end
  context 'with a given an invalid page number' do
    it 'reverts to the first page' do
      start, finish = Paginator.new('iAmNotAPage').paginate
      expect(start).to eq(1)
      expect(finish).to eq(100)
    end
  end
end
