
require "rails_helper"

RSpec.describe Task, type: :model do
  describe "validations" do
    it "is valid with a title" do
      task = Task.new(title: "Complete Rails CRUD API")

      expect(task).to be_valid
    end

    it "is invalid without a title" do
      task = Task.new(title: nil)

      expect(task).not_to be_valid
    end

    it "defaults completed to false" do
      task = Task.new(title: "Test task")

      expect(task.completed).to be(false)
    end
  end
end
