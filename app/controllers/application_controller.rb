class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private 
    def configure_permitted_parameters
    # for creating users
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name email password team_id
                                                         phone_number
                                                         password_confirmation current_password
]
    )
    # for updating users
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name email password team_id
                                                                 phone_number
                                                                password_confirmation
]
    )
  end
end
