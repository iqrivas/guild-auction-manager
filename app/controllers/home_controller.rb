class HomeController < ApplicationController
    def index
        @nombre = "Denisse Rivas" #Variable de instancia
        @skills = ["HTML", "CSS", "Ruby", "Rails", "JavaScript", "React"]
    end
end