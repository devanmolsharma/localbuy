class ItemsController < ApplicationController
    def index
        if(params['page'].nil?)
            @items = Item.all.limit(20);
        else
            @items = Item.all.limit(20).offset(params['page'].to_i * 10);
        end

        @total = (Item.all.count / 20).to_i;
    end

    def cat
        @items = Item.where(category:params[:category])
        @category = Category.find(params[:category])
    end
end
