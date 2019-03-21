class Station < ApplicationRecord
  belongs_to :home,optional: true
end
