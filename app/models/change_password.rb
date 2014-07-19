class ChangePassword

  include ActiveModel::Model

  attr_accessor :current_password, :new_password, :new_password_confirmation

  validates :current_password, presence: true
  validates :new_password, presence: true
  validates :new_password_confirmation, presence: true
end
