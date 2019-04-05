class Mirror < ApplicationRecord
  belongs_to :user
  has_many :mirror_apps
  has_many :apps, through: :mirror_apps
end
