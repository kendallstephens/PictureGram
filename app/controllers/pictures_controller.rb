class PicturesController < ApplicationController

    def index 
        @pictures = Picture.all 
    end

    def new
        @picture = Picture.new
        @comment = Comment.new
        @tag = Tag.new
        @user = current_user
      end
   
    def create 
         @picture = Picture.new(picture_params) 
         if params[:picture][:tags][:name] != ""
            @tag = Tag.create_or_find_by(name: params[:picture][:tags][:name])
            @picture.tags << @tag 
         end
         @picture.owner_id = session[:user_id]
         @picture.save
         if @picture.valid?
            session[:picture_id] = @picture.id
            redirect_to @user
         else
            redirect_to new_picture_path
         end
    end


    def show 
        @picture = Picture.find(params[:id])
        session[:picture_id] = params[:id]
        @comments = @picture.comments
        @comment = Comment.new
    end

    def destroy
        @picture.destroy
        redirect_to pictures_path
    end
   

    private

    def picture_params
        params.require(:picture).permit(:image_url, :title, :owner_id)
    end


end
