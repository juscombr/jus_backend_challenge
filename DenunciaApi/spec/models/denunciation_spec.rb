require 'rails_helper' 

describe Denunciation do 
    it "é válido se o titulo, descrição e link estão presentes" do
        denunciation = Denunciation.new title: "titulo", description: "denuncia ao site",
        link: "https://globoesporte.globo.com"
        expect(denunciation).to be_valid
    end 
end
