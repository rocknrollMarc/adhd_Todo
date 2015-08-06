class Project

	attr_accessor :tasks

  include Mongoid::Document

	def initialize
		@tasks = []
	end

	def incomplete_tasks
		tasks.reject(&:complete?)
	end

	def done?
		tasks.reject(&:complete?).empty?
	end

	def total_size
		tasks.sum(&:size)
	end

	def remaining_size
		tasks.reject(&:complete?).sum(&:size)
	end
	
end
