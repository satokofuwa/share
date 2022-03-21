module UsersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_users_path
    elsif action_name == 'edit' #編集画面の場合は、確認画面が不要だから
      user_path
    end 

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        current_user.present?
    end
  end
end
