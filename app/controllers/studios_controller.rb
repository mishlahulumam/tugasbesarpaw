class StudiosController < ApplicationController
    #get
    def index
        @studios = Studio.all
    end
    
    #get
    def show
        @studio = Studio.find(params[:id])
    end
    
    #get
    def new
        @studio = Studio.new
    end
    
    #post
    def create
        @studio = Studio.new(resource_params)
        if @studio.save
            redirect_to studio_path(@studio.id)
        else
            render 'new'
        end
    end
    
    #get
    def edit
        @studio = Studio.find(params[:id])
    end
    
    #patch/put
    def update
        @studio = Studio.find(params[:id])
        @studio.update(resource_params)
        redirect_to studio_path(@studio.id)
    end
    
    #delete
    def destroy
        studio = Studio.find(params[:id])
        studio.destroy
        redirect_to studios_path
    end

    def active
        @studios = Studio.where(status: 1)
        render 'index'
    end

    def toggle
        @studio = Studio.find(params[:id])
        @studio.status = 0;
        @studio.save
        render plain: 'studio berhasil dinonaktifkan'
    end

    private
    def resource_params
        params.require(:studio).permit(:kode, :tanggal, :waktu, :nama, :nama_band, :no_hp)
    end
end