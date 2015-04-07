class Todo < ActiveRecord::Base
	validates :name, presence: true
end
