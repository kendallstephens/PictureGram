class TagsController < ApplicationController
    def index
        @tags = Tag.all 
    end

    def show
        @tag = Tag.find(params[:id])
        session[:tag_id] = params[:id]
        # @pictures = Picture.all
        @pictures = Picture.new
    end

    def new
       @tag = Tag.new
      end


    def create
        @tag = Tag.create
    end
    
private

    def tag_params
    params.require(:picture).permit(:name)
    end

end
