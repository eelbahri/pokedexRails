class Move < ApplicationRecord
  belongs_to :type, optional: true
end
