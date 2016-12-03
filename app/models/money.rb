class Money < ApplicationRecord
validates :title, :amount, presence: true
end

