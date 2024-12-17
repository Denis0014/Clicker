class User < ApplicationRecord
  belongs_to :login
  has_one :account
end
