class CategoriesController < ApplicationController
    def index
        @colors = ['slate','gray','orange','red','zinc','amber','yellow','lime','green','emrald','teal','cyan','sky','blue','indigo','violet','purple','fuchsia','pink','rose'
          ];
        @categories = Category.all;
    end
end
