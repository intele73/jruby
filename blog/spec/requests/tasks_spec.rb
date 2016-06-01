require 'rails_helper'
feature "User logs in and logs out" do
#RSpec.describe "Tasks", type: :request do
  describe "GET /tasks", :type => :feature do
    scenario "display tasks" do
      visit tasks_path
    end
  end

  describe "POST /tasks", :type => :feature do
    scenario "create task" do
      visit tasks_path
      fill_in 'New Task', with: "intelegencia"
      click_button "Add"
      #save_and_open_page
      page.should have_content("intelegencia")
    end
  end

  # describe "GET /tasks/:id"
  #   scenario "show single value" do
  #     visit task_path(:i)
  #   end
  # end
#end
end
