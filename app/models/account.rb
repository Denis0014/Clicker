class Account < ApplicationRecord
  belongs_to :score
  has_one :upgrade
end
