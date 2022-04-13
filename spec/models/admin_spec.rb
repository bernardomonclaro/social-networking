require 'rails_helper'

RSpec.describe Admin, type: :model do
  it 'admin is valid' do
    admin = Admin.new(name: 'bernardo', email: 'admin@example.com', password: '123456')

    expect(admin.email).to eq('admin@example.com')
    expect(admin).to be_valid
  end

  it 'admin is not valid' do
    admin = Admin.new(email: 'admin@example.com')

    expect(admin).to_not be_valid
  end
end
