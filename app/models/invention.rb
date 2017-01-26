class Invention < ApplicationRecord
  has_and_belongs_to_many :bits
  has_one :user #, required: true

  accepts_nested_attributes_for :bits, :user, allow_destroy: true

  acts_as_taggable_on :other_materials

	validates :title, :presence => true, :length => { :maximum => 255 }
  validates :description, :presence => true, :length => { :maximum => 255 }
  validates :user_name, :length => { :maximum => 255 }
  validates :email_address, :length => { :maximum => 255 }
end
