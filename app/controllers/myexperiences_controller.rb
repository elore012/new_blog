class MyexperiencesController < ApplicationController

   

    def update
        @myexperience = Myexperience.find(params[:id])

        if@myexperience.update(info_params)
            redirect_to view_path
        else
            render :edit
        end
    end

    def edit
        @myexperience = Myexperience.find(params[:id])
    end

    
    def index
        @myexperiences = Myexperience.all
    end

    def new
        @myexperiences = Myexperience.new
    end

    
    def show
        @myexperiences = Myexperience.find(params[:id])
    end
   
    def create
        @myexperiences = Myexperience.new(info_params)
        if @myexperiences.save
         redirect_to view_path
        else
         render :new, status: :unprocessable_entity
        end
    end
    def destroy
        @myexperience = Myexperience.find(params[:id])
        @myexperience.destroy
        redirect_to view_path
    end

    private
    def info_params

        params.require(:myexperience).permit(:name, :title,:body)
    end
end