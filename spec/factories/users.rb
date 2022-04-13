FactoryBot.define do
  factory :user do
    name { "Bernardo" }
    email { "email@email.com" }
    phone { "999889784" }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') }
    password { "123456" }
  end
end
