class Vote < ApplicationRecord
  # Direct associations

  has_many   :apples,
             :dependent => :destroy

  belongs_to :photo,
             :counter_cache => :likes_count

  belongs_to :user,
             :foreign_key => "voter_id"

  # Indirect associations

  # Validations

  validates :photo_id, :uniqueness => { :scope => [:voter_id], :message => "already liked" }

  validates :photo_id, :presence => true

  validates :voter_id, :presence => true

end
