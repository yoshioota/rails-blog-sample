# https://github.com/plataformatec/devise/wiki/How-To:-Redirect-to-a-specific-page-on-successful-sign-up-%28registration%29

class RegistrationsController < Devise::RegistrationsController

  def new
    build_resource({})
    respond_with self.resource
  end

  def create
    build_resource(sign_up_params)

    if resource.save
      yield resource if block_given?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  private

    def after_sign_in_path_for(resource)
      home_path
    end

    def after_sign_up_path_for(resource)
      home_path
    end

    def sign_up_params
      params.require(:user).permit(:screen_name, :email, :password, :password_confirmation)
    end

end
