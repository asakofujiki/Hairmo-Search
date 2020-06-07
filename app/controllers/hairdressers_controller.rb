class HairdressersController < ApplicationController
  def index
  	@hairdressers = Hairdresser.all
  end

  def show
    @hairdresser = Hairdresser.find(params[:id])
    @cut = @hairdresser.cuts
    @color = @hairdresser.colors
    @perm = @hairdresser.perms
    @set = @hairdresser.set_hairs
  end

  def edit
  end

  def update
  end

  private
  def hairdresser_params
  	params.require(:hairdresser).permit(:hairdresser_name, :hairdresser_image_id, :hairdresser_gender, :salon_name, :postal_code, :salon_address, :area)
  end
end
