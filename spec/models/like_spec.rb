require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'user likes a post' do
    bob = FactoryBot.create(:user)
    jack = FactoryBot.create(:user)
    ryan = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: bob)

    Like.create(user: jack, post: post)
    expect(post.likes.count).to eq 1
    expect(post.likes.first.user).to eq jack

    Like.create(user: ryan, post: post)
    expect(post.likes.count).to eq 2
    expect(post.likes.last.user).to eq ryan

    Like.find_by(post: post, user: jack).destroy
    expect(post.likes.count).to eq 1
    expect(post.likes.last.user).to eq ryan
  end
end
