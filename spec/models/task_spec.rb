require 'rails_helper'

RSpec.describe Task, type: :model do
	it 'can destinguish a completed task' do
		task = Task.new
		expect(task).not_to be_complete
		task.mark_complete
	end
end
