require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: "Wenbin's Sample App")
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Wenbin's Ruby on Rails Sample App | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Me'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Me')
    end

    it "should have the title 'About Me'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Wenbin's Ruby on Rails App | About Me")
    end
  end
end