class Home::WithdrawalsController < AuthorizedController

  def edit
  end

  def destroy
    current_user.destroy
    redirect_to root_path, notice: '退会しました'
  end
end
