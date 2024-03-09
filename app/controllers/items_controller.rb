class ItemsController < ApplicationController
    def index
        @items = Item.all.limit(20);
    end

    def cat
        @items = Item.where(category:params[:category])
        @category = Category.find(params[:category])
    end
end
