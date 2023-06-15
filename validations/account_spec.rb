require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username, password, and email' do
    ken = Account.create(password:'testing',email:'sample')
    expect(ken.errors[:username]).to_not be_empty
    jerry = Account.create(username:'testing',email:'sample')
    expect(jerry.errors[:password]).to_not be_empty
    mike = Account.create(password:'testing',username:'sample')
    expect(mike.errors[:email]).to_not be_empty
  end

  it 'does not allow duplicate usernames' do
    jerry = Account.create(username:'testing',password:'sample',email:'sample')
    ken = Account.create(username:'testing',password:'sample',email:'sample')
    expect(ken.errors[:username]).to_not be_empty
  end

end
