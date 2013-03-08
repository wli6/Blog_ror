class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  
  validates :content, :length => { :maximum => 140}, presence: true
  validates :user_id, presence: true
   
   
  default_scope order: 'microposts.created_at DESC'
  
  def self.from_user_followed_by(user)
    followed_user_ids = "SELECET followed_id FROM relationships
                        WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
        user_id: user.id)
  end
end
