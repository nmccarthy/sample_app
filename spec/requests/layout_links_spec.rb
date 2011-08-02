require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

  it "should have a Sign Up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")
  end
  
  it "should have the right links on the layout" do
    visit root_path

    # test the about link on the root page
    click_link "About"
    response.should have_selector('title', :content => "About")

    # test the help link on the root page
    click_link "Help"
    response.should have_selector('title', :content => "Help")

    # test the contact link on the root page
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")

    # test the home link on the root page
    click_link "Home"
    response.should have_selector('title', :content => "Home")

    # test the signup link on the root page
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign Up")

  end
end