class Conference < ActiveRecord::Base
  validates :year, :title, presence: true
end
