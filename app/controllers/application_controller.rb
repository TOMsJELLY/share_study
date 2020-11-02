class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    #デフォルトで保存可能なemailとpassword以外の値が保存できるように。
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:nickname, :grade_id])
  end
end
