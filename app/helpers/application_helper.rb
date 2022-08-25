# frozen_string_literal: true

module ApplicationHelper
  def greeting(name)
    greeting = case Time.current.to_s(:time)
               when ("05:00".."11:59") then "Good Morning"
               when ("12:00".."17:59") then "Good Afternoon"
               when ("18:00".."21:59") then "Good Evening"
               else "Good Night"
    end
    "#{greeting} #{name}".strip
   end

  def incoming_students
    @new_students ||= []

    @user_ids = User.select(:id).map(&:id)
    @student_ids = Student.select(:user_id).map(&:user_id)

    @user_ids.each do |id|
      if not @student_ids.include?(id) do
        @new_students.push(id)
      end
      end
    end

    @new_students
  end

  def classroom_list
    @classroom_list = Classroom.all.order(:role)
  end

  def calculate_age(birthday)
    ((Time.zone.now - (birthday).to_time) / (60 * 60 * 24 * 365)).floor
  end

  def is_school_staff
    if current_user
      current_user.admin? || current_user.super_admin? || current_user.teacher?
    end
  end
end
