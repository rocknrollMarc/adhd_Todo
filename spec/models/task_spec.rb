require 'rails_helper'

RSpec.describe Task, type: :model do

	it 'can destinguish a completed task' do
		task = Task.new
		expect(task).not_to be_complete
		task.mark_completed
		expect(task).to be_complete
	end
	describe "velocity" do
		let(:task) { Task.new(size: 3) }

		it 'does not count incomplete task toward velocity' do
			expect(task.points_toward_velocity).to eq(0)
		end

		it 'does not count a long-ago task toward velocity' do
			task.mark_completed(6.months.ago)
			expect(task.points_toward_velocity).to eq(0)
		end

		it 'counts a recently completed task toward velocity' do
			task.mark_completed(1.day.ago)
			expect(task).to be_part_of_velocity
			expect(task.points_toward_velocity).to eq(3)
		end
	end
	
end
