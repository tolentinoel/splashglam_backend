class WelcomeController < ApplicationController

    def index
        render plain: "WELCOME"
    end
end
