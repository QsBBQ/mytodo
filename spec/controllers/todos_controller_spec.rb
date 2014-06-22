require 'spec_helper'

describe TodosController do
  describe "GET index" do
    it "sets the @todos variable" do
      cook = Todo.create(name: "cook")
      sleep = Todo.create(name: "sleep")

      get :index
      assigns(:todos).should == [cook, sleep]
    end

    it "renders the index template" do
      get :index
      response.should render_template :index
    end
  end
end