class Project

	attr_accessor :tasks

  include Mongoid::Document

	def initialize
		@tasks = []
	end

	def done?
		tasks.reject(&:complete?).empty?
	end
	
end
