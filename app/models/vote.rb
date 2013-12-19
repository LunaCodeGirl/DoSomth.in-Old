class Vote < ActiveRecord::Base
	belongs_to :user
	belongs_to :issue
	type = {:up_vote => "up_vote", :down_vote => "down_vote"}
end
