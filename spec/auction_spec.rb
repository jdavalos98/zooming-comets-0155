require './lib/auction'
require './lib/item'


RSpec.describe Auction do 
  it 'exists and has attributes' do
    auction = Auction.new
    expect(auction).to be_a(Auction)
    expect(auction.items). to eq([])
  end

  it 'can add items and list item names' do
    auction = Auction.new
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')

    auction.add_item(item1)
    auciton.add_item(item2)

    expect(auction.items). to eq([item1, item2])
    expect(auction.item_names).to eq(['Chalkware Piggy Bank', 'Bamboo Picture Frame'])
  end
end