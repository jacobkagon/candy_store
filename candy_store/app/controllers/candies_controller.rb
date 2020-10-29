class CandiesController < ApplicationController
   
    def index
        @candies = Candy.all
    end

    def show
        @candy = Candy.find(params[:id])
    end

    def new

    end

    def create
      @candy = Candy.create(name: params[:name],
                 calories: params[:calories],
                 wrapper_color: params[:wrapper_color],
                 has_nuts: params[:has_nuts])
        @candy.save
        redirect_to candy_path(@candy)
    end

    def sort_by
        # render 'index'
       @candies = Candy.order(:name)
       @candies = Candy.order(:calories)
       render 'index'
    end



end
