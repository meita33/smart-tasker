class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :section

end
