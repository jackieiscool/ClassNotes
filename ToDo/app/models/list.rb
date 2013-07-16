class List < ActiveRecord::Base
  attr_accessible :name

  has_many :items
  accepts_nested_attributes_for :items
end
