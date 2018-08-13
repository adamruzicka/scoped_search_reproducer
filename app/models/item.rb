require 'scoped_search'

class Item < ApplicationRecord
  belongs_to :organization
  belongs_to :location
  
  scoped_search :relation => :location, :on => :title, :rename => :location, :complete_value => true, :only_explicit => true
  scoped_search :relation => :organization, :on => :title, :rename => :organization, :complete_value => true, :only_explicit => true
end
