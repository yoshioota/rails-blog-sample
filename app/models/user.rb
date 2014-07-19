class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise \
      :database_authenticatable,
      :registerable,
      :recoverable,
      :rememberable,
      :trackable,
      :validatable

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :screen_name, presence: true, uniqueness: {case_sensitive: false}
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  def gravatar_url(*args)
    options = args.extract_options!
    length = options.delete(:length) || 130
    hash = Digest::MD5.hexdigest(email.downcase)
    "http://gravatar.com/avatar/#{hash}.jpg?s=#{length}"
  end
end
