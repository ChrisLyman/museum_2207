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
end
