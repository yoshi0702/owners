class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?


protected
def configure_permitted_parameters
	#カラムに入力許可を与える
	devise_parameter_sanitizer.permit :sign_up, keys: [:name,:surname,:kana_surname,:kana_name,:company_name,:kana_company_name,:profire_image,:postal_code,:address,:phone_number,:bank_name,:branch_name,:account_type,:account_number,:account_holder]
end


end
