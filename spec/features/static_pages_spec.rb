require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      visit '/static_pages/home'
      page.should have_title("#{base_title} | Home")
    end
  end

  describe "About page" do
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_title("#{base_title} | About Us")
    end
  end

end
