class Trainer < ActiveRecord::Base
  has_many :tokimons

  # LEVEL CALCUALTION
  before_save :calculate_level
  def calculate_level
    @level ||= 1
  end

  # Form validation
  validates :name, presence: true
end
