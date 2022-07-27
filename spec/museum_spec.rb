require './lib/museum'
require './lib/patron'
require './lib/exhibit'

RSpec.describe Museum do
  descrbe '#initialize' do
    it "exsits" do
      dmns = Museum.new("Denver Museum of Nature and Science")

       expect(dmns).to be_instance_of(Museum)
    end
  end
end
