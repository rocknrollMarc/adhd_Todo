require 'rails_helper'

RSpec.describe Project do

	describe 'initialization' do
		let(:project) { Project.new }
		let(:task) { Task.new }
		
		it 'considers a project with no tasks to be done' do
			expect(project).to be_done
		end

		it 'knows that a project with an incomplete task is not done' do
			project.tasks << task
			expect(project.done?).to be_falsy
		end

		it 'markes a project done if its tasks are done' do
			project.tasks << task
			task.mark_completed
			expect(project).to be_done
		end
		
	end
end
