require 'rails_helper'
RSpec.describe User, type: :user do

  it "user be valid" do
    @user = create(:user)
    expect(@user).to be_valid
  end
  it "non unique username not valid" do
    @user = create(:user, username:"ConiMarchant", email:"otromail@mail.com", password:"123abc")
    @user2 = build(:user, email: "mail@miuandes.cl")
    expect(@user2).to_not be_valid
  end
  it "non unique email not valid" do
    @user = create(:user, email:"mailcualquiera@miuandes.cl")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "username more than 20 not valid" do
    @user = build(:user, username:"estenombreescualquiercosa")
    expect(@user).to_not be_valid
  end
end