class ConcertsController < ApplicationController
    def index
        @concerts = Concerts.all
    end
end
