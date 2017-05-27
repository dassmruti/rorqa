class Answer < ApplicationRecord
  belongs_to :question
  has_many :comments, as: :commentable
  validates :answer, :presence => true

  after_save :notify_users

  def notify_users
    logger.info "New Answer => #{self.answer}"
    #   LONG Running process , I want o email the new answer to users which takes around 20 sec
    # sleep 20
    logger.info "Emails Sent => #{self.answer}"
  end
end
