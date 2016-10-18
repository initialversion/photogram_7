class Vote < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :photo_id, :uniqueness => { :scope => [:voter_id], :message => "already liked" }

  validates :photo_id, :presence => true

  validates :voter_id, :presence => true

end
