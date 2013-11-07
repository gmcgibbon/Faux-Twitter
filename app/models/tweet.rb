class Tweet < ActiveRecord::Base
  attr_accessible :text
  validates :text, :presence => true
  validates :text, :length   => { :maximum => 140 }
end
