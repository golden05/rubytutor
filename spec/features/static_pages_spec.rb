require 'spec_helper'
describe "StaticPages" do
  subject { page }

  shared_examples_for "all static page" do
    it { should have_title(full_title(page_title)) }
  end

  describe "GET /static_pages" do
    before { visit root_path }
    let(:page_title) { '' }
    it_should_behave_like "all static page"
  end

  describe "About page" do
    before { visit about_path }
    let(:page_title) { 'About Us' }
    it_should_behave_like "all static page"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:page_title) { 'Contact' }
    it_should_behave_like "all static page"
  end
end
