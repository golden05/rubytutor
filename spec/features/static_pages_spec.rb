require 'spec_helper'
describe "StaticPages" do
  subject { page }

  describe "GET /static_pages" do
    before { visit root_path }
    it { should have_title(full_title('Home')) }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1',text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
