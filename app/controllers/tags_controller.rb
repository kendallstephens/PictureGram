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


    def create
        @tag = Tag.new(tag_params)
        @tag.user_id = session[:user_id]
        @tag.picture_id = session[:picture_id]
        tag.save
    end




private

    def tag_params
    params.require(:picture).permit(:name)
    end

end
