require 'spec_helper'

describe Todo do
  it "saves itself" do
    todo = Todo.new(name: "cook dinner", description: "I love cooking!")
    todo.save
    Todo.first.name.should == "cook dinner"
  end

  describe "#name_only?" do
    it "returns true if the description is nil" do
      todo = Todo.new(name: "cook dinner")
      todo.name_only?.should be_true
    end

    it "returns true if the description is an empty string" do
      todo = Todo.new(name: "cook dinner", description: "")
      todo.name_only?.should be_true
    end

    it "returns false if the description is a non empty string" do
      todo = Todo.new(name: "cook dinner", description: "Potatoes!!")
      todo.name_only?.should be_false
    end
  end
end