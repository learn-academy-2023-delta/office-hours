require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid if street number is not an integer' do
    ken = Account.create(username:'test', password:'testing',email:'sample')
    address = Address.create(street_number:'123a', street_name: 'Dr.Who', city:'San Diego', state:'expensive CA', zip:94353, account_id: ken.id)
    expect(address.errors[:street_number]).to_not be_empty
    expect(address.errors[:street_number]).to include("Please, input numbers only")
  end

end
