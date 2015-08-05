class Task
  include Mongoid::Document

	def initialize
		@completed = false
	end

	def mark_complete
		@completed = true
	end

	def complete?
		@completed
	end
end
