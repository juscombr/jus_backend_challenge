require 'rails_helper' 

describe Denunciation do 
    it "é válido se o titulo, descrição e link estão presentes" do
        user = User.create name: "teste", user_type: 0
        denunciation = Denunciation.new title: "titulo", description: "denuncia ao site",
        link: "https://globoesporte.globo.com", user_id: user.id
        expect(denunciation).to be_valid
    end 
end

describe "GET denunciations#index", type: :request do
    it "teste de index do DenunciationsControllers" do
      get '/denunciations/?name_user=luiz'

      expect(response).to have_http_status(422)
    end
end