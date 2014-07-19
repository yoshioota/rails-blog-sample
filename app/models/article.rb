class Article < ActiveRecord::Base

  include AASM

  aasm do
    state :draft, :initial => true
    state :published

    event :publish, before: ->{ self.published_at = Time.now } do
      transitions :from => :draft, :to => :published
    end

    event :draft do
      transitions :from => :published, :to => :draft
    end
  end

  has_many :comments

  belongs_to :user

  validates :title, presence: true
  validates :body_source, presence: true

  def body_text
    RedcarpetCompiler.html_to_text(self.body)
  end
end
