class Tokimon < ActiveRecord::Base
  belongs_to :trainer
  before_save :calculate_total

  after_save do
    self.trainer.save # Automatically modifies trainer level with every tokimon update
  end

  # TOTAL CALCULATION
  def calculate_total
      self.total = fly + fight + fire + water + electric + ice
  end

  # Validations for creation / editing of a tokimon

  validates_associated :trainer

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :trainer_id, presence: true
  validates :weight, numericality: true
  validates :height, numericality: true
  validates :fly, numericality: { only_integer: true}
  validates :fly, :inclusion => {:in => 0..100}
  validates :fight, numericality: { only_integer: true}
  validates :fight, :inclusion => {:in => 0..100}
  validates :fire, numericality: { only_integer: true}
  validates :fire, :inclusion => {:in => 0..100}
  validates :water, numericality: { only_integer: true}
  validates :water, :inclusion => {:in => 0..100}
  validates :electric, numericality: { only_integer: true}
  validates :electric, :inclusion => {:in => 0..100}
  validates :ice, numericality: { only_integer: true}
  validates :ice, :inclusion => {:in => 0..100}
end
