class Pokemon < ApplicationRecord
    belongs_to :type, optional: true
end
