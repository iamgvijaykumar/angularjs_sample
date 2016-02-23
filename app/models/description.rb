class Description < ActiveRecord::Base
	validates :name, presence: true, length:{minimum:3, maximun:20}
	validates :description, presence: true, length:{minimum:20, maximun:300}
	
end
