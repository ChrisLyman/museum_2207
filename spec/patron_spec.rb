require './lib/patron'

RSpec.describe Patron do
  describe 'initialize' do
    it 'exsits' do
      patron_1 = Patron.new("Bob", 20)

      expect(patron_1).to be_instance_of(Patron)
    end
  end

  describe '@name' do
    it 'has a name' do
      patron_1 = Patron.new("Bob", 20)

      expect(patron_1.name).to eq("Bob")
    end
  end

  describe '@spending_money' do
    it 'has spending money' do
      patron_1 = Patron.new("Bob", 20)

      expect(patron_1.spending_money).to eq(20)
    end
  end

  describe 'interests' do
    it 'has an empty array of interests' do
      patron_1 = Patron.new("Bob", 20)

      expect(patron_1.interests).to eq([])
    end
  end

  describe '#add_interests' do
    it 'has an array of interests' do
      patron_1 = Patron.new("Bob", 20)

      patron_1.add_interests("Dead Sea Scrolls")
      patron_1.add_interests("Gems and Minerals")

      expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
    end 
  end
end
