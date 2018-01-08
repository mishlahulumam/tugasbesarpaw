class SewasController < ApplicationController
	def index
		@sewas = Sewa.all
	end
	
	def show
		@sewa = Sewa.find(params[:id])
	end

	def new
		@sewa = Sewa.new
	end

	def create
		@sewa = Sewa.new(resource_params)
		if @sewa.save
            redirect_to sewa_path(@sewa.id)
		else
            render 'new'
        end
	end
	
	def edit
		@sewa = Sewa.find(params[:id])
	end

	def update
		@sewa = Sewa.find(params[:id])
		@sewa.update(resource_params)
		redirect_to sewa_path(@sewa.id)
	end

	def destroy
		sewa = Sewa.find(params[:id])
		sewa.destroy
		redirect_to sewas_path
	end

	private
    def resource_params
        params.require(:sewa).permit(:nama, :univ, :no_hp, :alat, :jaminan)
    end
end