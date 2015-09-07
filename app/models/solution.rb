class Solution < ActiveRecord::Base
  belongs_to :program
  enum kind: [:procedure, :error]
end
