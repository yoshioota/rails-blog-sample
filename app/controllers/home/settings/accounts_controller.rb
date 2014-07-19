class Home::Settings::AccountsController < Home::Settings::BaseController

  before_filter do
    add_breadcrumb('アカウント設定')
  end

  def edit
  end

  def update
    current_user.assign_attributes(user_params)

    if current_user.valid?
      current_user.save!
      flash[:success] = '保存しました'
      redirect_to action: :edit
    else
      render :edit
    end
  end

  private

    def user_params
      params.require(:user).permit(:screen_name, :email)
    end

end
