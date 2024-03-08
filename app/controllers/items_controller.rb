class ItemsController < ApplicationController
    def index
        @items = Item.all;
    end

    def cat
        @items = Item.where(category:params[:category])
        @category = Category.find(params[:category])
    end
end
