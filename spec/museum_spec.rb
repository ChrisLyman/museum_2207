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

  describe '#add exhibits' do
    it 'has an array of exhibits' do
      dmns = Museum.new("Denver Museum of Nature and Science")
      gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
      dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
      imax = Exhibit.new({name: "IMAX",cost: 15})

      dmns.add_exhibit(gems_and_minerals)
      dmns.add_exhibit(dead_sea_scrolls)
      dmns.add_exhibit(imax)

      expect(dmns.exhibits).to eq([gems_and_minerals, dead_sea_scrolls, imax])
    end
  end
end
