require 'rails_helper'

RSpec.describe "User can login" do
  it "by authenticating with census app" do
    stub_omniauth
    visit root_path
    click_link "Login with Census"
    expect(page).to have_content("Jeff Casimir")
  end
end


def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:census] = OmniAuth::AuthHash.new({
    provider: "census",
    uid: "1234",
    info: {
      token: "my_token",
      name: "Jeff Casimir",
      email: "jeff@example.com"
    }
  })
end
