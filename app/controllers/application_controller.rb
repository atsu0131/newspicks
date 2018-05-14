class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, only: :authentication
  before_action :configure_permitted_parameters, if: :devise_controller?

def authenticate_admin_user!
  authenticate_user!

  # current_userはdevise提供のメソッドです。
  # 権限ユーザのroleについては、好きな方法でよいです。（自分の場合、has_roleメソッドで実装）
  unless current_user.has_role 'admin'
    flash[:alert] = "管理者用ページです。権限があるアカウントでログインしてください。"
    redirect_to root_path
  end
end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:name, :email, :password, :password_confirmation)
    end
  end
end
