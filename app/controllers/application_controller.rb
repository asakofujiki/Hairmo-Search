class ApplicationController < ActionController::Base
	before_action :configure_permitted_paramerters, if: :devise_controller?

	def after_sign_up_path_for(resource)
		root_path
	end

	def after_sign_in_path_for(resource)
		root_path
	end

	def after_sign_out_path_for(resource)
		root_path
	end

	protected
	def configure_permitted_paramerters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:hairdresser_name, :hairdresser_image, :hairdresser_gender, :salon_name, :postal_code, :salon_address, :area, :email, cut_type_ids: [], color_type_ids: [], perm_type_ids: [], set_type_ids: []])
	end
end
