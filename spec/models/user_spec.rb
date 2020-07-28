require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
  let(:params) {{name: "yasuda"}}
  it "年齢3:ユーザーの名前が取得できること" do
    params.merge!(age: 1)
    user = User.new(params)
    expect(user.disp_name).to eq "yasudaちゃん"
  end
  it "年齢12:ユーザーの名前が取得できること" do
    params.merge!(age: 12)
    user = User.new(params)
    expect(user.disp_name).to eq "yasuda君"
  end
  it "年齢25:ユーザーの名前が取得できること" do
    params.merge!(age: 25)
    user = User.new(params)
    expect(user.disp_name).to eq "yasudaさん"
   end
 end
end