class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  layout :set_layout
  before_action :configure_permitted_parameters, if: :devise_controller?

  def is_school_admin
    unless current_user.admin? || current_user.super_admin? || current_user.teacher?
      flash[:danger] = "You do not have permission to perform this task"
      redirect_to "/classrooms/#{current_user.student.classroom.id}"
    end
  end


  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :address])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :address])
    end

    def after_sign_in_path_for(resource)
      if current_user.role == "student"
        "/classrooms/#{current_user.student.classroom.id}"
      elsif current_user.role == "user"
        edit_user_registration_path
      else
        root_path
      end
    end

    def set_layout
      if current_user
        "application"
      else
        "auth"
      end
    end

end
