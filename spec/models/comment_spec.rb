require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'user comment on a post' do
    bob = FactoryBot.create(:user)
    jack = FactoryBot.create(:user)

    post = FactoryBot.build(:post, user: bob)

    comment = FactoryBot.create(:comment, user: jack, post: post)

    expect(post.comments.count).to eq 1
    expect(post.comments.first.user).to eq jack
    expect(post.comments.first.body).to eq "Maneiro o seu post!"
    expect(jack.comments.first).to eq comment
  end
end
