require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classroom = Classroom.create(name: "classroom three", role: 12)
    @user = User.create(name:"John Doe", email:"jj@doe.com", password:"welcome", password_confirmation:"welcome", role:"admin", gender: "male", address:"ksi")
    @user2 = User.create(name:"Test student", email:"test@tudent.stk", password:"welcome", password_confirmation:"welcome", role:"learner", gender: "male", address:"ksi")
    @user3 = User.create(name:"Test student 3", email:"test3@tudent.stk", password:"welcome", password_confirmation:"welcome", role:"learner", gender: "male", address:"ksi")
    @student = Student.create(user_id:@user2.id, classroom_id:@classroom.id, dob:"1990-08-23", contact:"MyString", father:"MyString", mother:"MyString", about:"MyText")

  end

  test "should redirect to auth page if not authenticated" do
    get students_url
    get new_student_url
    
    # assert_redirected_to new_user_session_path
       assert_response :success
  end


  test "shold get index" do
    
    get students_path
    # assert_redirected_to new_user_session_path
    # post new_user_session_path, params: {  email: @user.email, password: @user.password }
    assert_response :success

  end

  test "should get new" do
    get new_student_url
    # assert_redirected_to new_user_session_path
    # post new_user_session_path, params: {  email: @user.email, password: @user.password }
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: {student: {about: "i like to learn", classroom_id: @classroom.id, contact: "hello", dob: @student.dob, father: @student.father, mother: @student.mother, user_id: @user3.id} }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { about: "about me has changed", classroom_id: @student.classroom_id, contact: "1990-09-09", dob: "1990-09-09", father: "ken", mother: "john", user_id: @student.user_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
