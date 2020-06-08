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
    @haircatalogs = HairCatalog.where(hairdresser_id: @hairdresser).order(created_at: "DESC")
  end

  def edit
    @hairdresser = current_hairdresser
    @cut_types = CutType.all
    @color_types = ColorType.all
    @perm_types = PermType.all
    @set_types = SetType.all
  end

  def update
    @hairdresser = current_hairdresser
    @hairdresser.update(hairdresser_params)
    redirect_to hairdresser_path(@hairdresser)
  end

  private
  def hairdresser_params
  	params.require(:hairdresser).permit(:hairdresser_name, :hairdresser_image, :hairdresser_gender, :salon_name, :postal_code, :salon_address, :area, :hairdresser_comment, cut_type_ids: [], color_type_ids: [], perm_type_ids: [], set_type_ids: [])
  end
end
