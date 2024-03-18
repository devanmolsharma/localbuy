class CategoriesController < ApplicationController
    def index
        @colors = ['slate','gray','orange','red','zinc','amber','yellow','lime','green','teal','cyan','sky','blue','indigo','violet','purple','fuchsia','pink','rose'
          ];
        @categories = Category.all;
    end


    def view 
      @colors = ['slate','gray','orange','red','zinc','amber','yellow','lime','green','teal','cyan','sky','blue','indigo','violet','purple','fuchsia','pink','rose'
    ]
        @category = Category.find(params[:category])
    end

    def find 
      @colors = ['slate','gray','orange','red','zinc','amber','yellow','lime','green','teal','cyan','sky','blue','indigo','violet','purple','fuchsia','pink','rose'
    ]
        @categories = Category.where('name like ?',"%#{params[:query]}%")
    end
end
