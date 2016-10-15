class Trainer < ActiveRecord::Base
  has_many :tokimons, dependent: :destroy

  # LEVEL CALCULATION
  before_save :calculate_level

  def calculate_level
    iTemp = tokimons.where(trainer_id: self.id).count
    if (iTemp < 3)
      self.level = 1
    else
      self.level = (3 + iTemp) / 3
    end
  end

  # Form validation
  validates :name, presence: true
end
