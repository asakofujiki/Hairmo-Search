class HairdressersController < ApplicationController
  def index
  	@hairdressers = Hairdresser.all.page(params[:page]).per(6)
    @cut_types = CutType.all
    @color_types = ColorType.all
    @perm_types = PermType.all
    @set_types = SetType.all
    if params[:hairdresser_gender].present?
      @hairdressers = @hairdressers.where(hairdresser_gender: params[:hairdresser_gender])
    end
    if params[:area].present?
      @hairdressers = @hairdressers.where(area: params[:area])
    end
    if params[:cut_type_ids].present?
      cuts = Cut.where(cut_type_id: params[:cut_type_ids])
      @hairdressers = @hairdressers.where(id: cuts.pluck(:hairdresser_id).uniq)
    end
    if params[:color_type_ids].present?
      colors = Color.where(color_type_id: params[:color_type_ids])
      @hairdressers = @hairdressers.where(id: colors.pluck(:hairdresser_id).uniq)
    end
    if params[:perm_type_ids].present?
      perms = Perm.where(perm_type_id: params[:perm_type_ids])
      @hairdressers = @hairdressers.where(id: perms.pluck(:hairdresser_id).uniq)
    end
    if params[:set_type_ids].present?
      sets = SetHair.where(set_type_id: params[:set_type_ids])
      @hairdressers = @hairdressers.where(id: sets.pluck(:hairdresser_id).uniq)
    end
  end

  def show
    @hairdresser = Hairdresser.find(params[:id])
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
  	params.require(:hairdresser).permit(
      :hairdresser_name,
      :hairdresser_image,
      :hairdresser_gender,
      :salon_name,
      :postal_code,
      :salon_address,
      :area,
      :hairdresser_comment,
      cut_type_ids: [],
      color_type_ids: [],
      perm_type_ids: [],
      set_type_ids: []
    )
  end
end
