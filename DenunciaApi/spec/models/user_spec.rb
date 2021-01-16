require 'rails_helper'

describe User do 
  it "é válido se o nome e o tipo de usuario são válidos" do
      user = User.new name: "titulo", user_type: 0
      expect(user).to be_valid
  end 
end
