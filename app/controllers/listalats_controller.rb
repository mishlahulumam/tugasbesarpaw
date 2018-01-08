class ListalatsController < ApplicationController
	def index
		@listalats = Listalat.all
	end

	def show
		@listalat = Listalat.find(params[:id])
    end

	def new
		@listalat = Listalat.new
	end

	def create
		@listalat = Listalat.new(resource_params)
        if @listalat.save
            redirect_to listalat_path(@listalat.id)
        else
            render 'new'
        end
	end

	def edit
		@listalat = Listalat.find(params[:id])
	end

	def update
		@listalat = Listalat.find(params[:id])
        @listalat.update(resource_params)
        #render plain: 'berhasil diupdate'
        redirect_to listalat_path(@listalat.id)
	end

	def destroy
		listalat = Listalat.find(params[:id])
        listalat.destroy
        redirect_to listalats_path
	end

	def active
		@listalats = Listalat.where(status: 1)
		render 'index'
	end

	def toggle
		@listalat = Listalat.find(params[:id])
		@listalat.status = 0
		@listalat.save
		redirect_to listalats_path
	end

	def toggle2
		@listalat = Listalat.find(params[:id])
		@listalat.status = 1
		@listalat.save
		redirect_to listalats_path
	end

	private
	def resource_params
		params.require(:listalat).permit(:nama_alat, :jenis, :tipe, :harga_sewa)
	end
end