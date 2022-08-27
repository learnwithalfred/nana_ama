class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :set_layout
  before_action :configure_permitted_parameters, if: :devise_controller?

  def is_school_admin
    unless current_user.admin? || current_user.super_admin? || current_user.teacher? || current_user.staff?
      flash[:danger] = "You do not have permission to perform this task"
       redirect_to root_path
    end
  end


  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :address])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :address])
    end

    def after_sign_in_path_for(resource)
      if current_user.role == "learner" && current_user.student.classroom.id != nil
        "/classrooms/#{current_user.student.classroom.id}"
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
