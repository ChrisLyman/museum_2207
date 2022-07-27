require './lib/museum'
require './lib/patron'
require './lib/exhibit'

RSpec.describe Museum do
  describe '#initialize' do
    it "exsits" do
      dmns = Museum.new("Denver Museum of Nature and Science")

       expect(dmns).to be_instance_of(Museum)
    end
  end

  describe '@name' do
    it 'has a name' do
      dmns = Museum.new("Denver Museum of Nature and Science")

      expect(dmns.name).to eq("Denver Museum of Nature and Science")
    end
  end

  describe '@exhibits' do
    it 'has an empty array of exhibits' do
      dmns = Museum.new("Denver Museum of Nature and Science")

      expect(dmns.exhibits).to eq([])
    end
  end
end
