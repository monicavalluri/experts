class Expert < ApplicationRecord
  scope :search, -> (search_text) { where("expertise like ?", "%#{search_text}%") }
end
