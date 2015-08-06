class Task
  include Mongoid::Document

	attr_accessor :size, :completed

	def initialize(options = {})
		@completed = options[:completed]
		@size = options[:size]
	end

	def mark_complete
		@completed = true
	end

	def complete?
		@completed
	end
end
