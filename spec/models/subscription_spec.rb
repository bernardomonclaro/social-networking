require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it 'user can follow another user' do
    bernardo = FactoryBot.create(:user)
    joao = FactoryBot.create(:user)

    Subscription.create(followed: joao, followed_by: bernardo)

    expect(joao.followers.count).to eq 1
    expect(joao.followers).to include bernardo

    expect(bernardo.following.count).to eq 1
    expect(bernardo.following).to include joao

    expect(joao.following.count).to eq 0
    expect(joao.following).to_not include bernardo

    expect(bernardo.followers.count).to eq 0
    expect(bernardo.followers).to_not include joao

    maria = FactoryBot.create(:user)

    Subscription.create(followed: joao, followed_by: maria)

    expect(joao.followers.count).to eq 2
    expect(joao.followers).to include maria

    expect(maria.following.count).to eq 1
    expect(maria.following).to include joao
  end
end
