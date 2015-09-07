class Program < ActiveRecord::Base
  belongs_to :country
  has_many :solutions, dependent: :destroy

  after_create :setup_solutions


private
  def setup_solutions
    Solution.kinds.keys.each do |kind|
      self.solutions.create kind: kind
    end
  end
end
