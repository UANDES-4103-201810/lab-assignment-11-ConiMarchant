require 'rails_helper'
RSpec.describe Message, type: :message do

  it "message be valid" do
    @user = create(:user)
    @message = create(:message, user_id: @user.id)
    expect(@message).to be_valid
  end
  it "nil user_it not valid" do
    @message = build(:message , user_id:nil)
    expect(@message).not_to be_valid
  end
  it "non existing user_id not valid" do
    @user = create(:user)
    @message = build(:message , user_id:985743)
    expect(@message).not_to be_valid
  end
end