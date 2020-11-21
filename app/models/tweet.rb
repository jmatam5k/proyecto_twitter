class Tweet < ApplicationRecord
    belongs_to :user
    paginates_per 50
    has_many :likes
    #validates :tweet, :length => {:minimum => 1, :message => ' is a bit short...'}
end
