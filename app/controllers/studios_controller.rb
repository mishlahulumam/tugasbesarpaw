class StudiosController < ApplicationController
    def index
        @studios = Studio.all
        if params[:search]
            @studios = Studio.where("studios.tanggal LIKE concat('%',?,'%')",params[:search])
        else
            @studios = Studio.all
        end
    end

    def show
        @studio = Studio.find(params[:id])
    end

    def new
        @studio = Studio.new
    end

    def create
        @studio = Studio.new(resource_params)
        if @studio.save
            redirect_to studio_path(@studio.id)
        else
            render 'new'
        end
    end

    def edit
        @studio = Studio.find(params[:id])
    end

    def update
        @studio = Studio.find(params[:id])
        @studio.update(resource_params)
        redirect_to studio_path(@studio.id)
    end

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
        params.require(:studio).permit(:kode, :tanggal, :waktu, :nama, :nama_band, :no_hp, :waktu2)
    end
end