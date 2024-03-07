class ItemsController < ApplicationController
    def index
        @items = Item.all;
    end

    def cat
        @items = Item.where(category:params[:category])
    end
end
