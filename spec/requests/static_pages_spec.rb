require 'spec_helper'

describe "Static pages" do

	#let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	subject { page }

    describe "Home page" do
    	before { visit root_path }

    	it { should have_selector('h1', text: 'Sample App') }

    	it { should have_selector('title', text: full_title('')) }

    	it { should_not have_selector('title', text: "| Home") }


	    #it "should have the h1 'Sample App'" do
	    #  # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	    #  page.should have_selector('h1', text: 'Sample App')
	    #end
#
#	    #it "should have the base title" do
#	    #	page.should have_selector('title',
#	    #					 text: "Ruby on Rails Tutorial Sample App")
#	    #end
#
#	    #it "should not have a custome page title" do
#	    #	page.should_not have_selector('title', text: "| Home")
	    #end

    end

	describe "Help page" do
		before { visit help_path }

		it { should have_selector('h1', text: 'Help') }

    	it { should have_selector('title', text: full_title('Help')) }


		#it "should have the h1 'Help'" do
		#	page.should have_selector('h1', text: 'Help')
		#end

	    #it "should have the title 'Help'" do
	    #	page.should have_selector('title',
	    #					 text: "Ruby on Rails Tutorial Sample App | Help")
	    #end

	end

	describe "About page" do
		before { visit about_path }

		it { should have_selector('h1', text: 'About Us') }

    	it { should have_selector('title', text: full_title('About Us')) }


		#it "should have the h1 'About Us'" do
		#	page.should have_selector('h1', text: 'About Us')
		#end

	    #it "should have the title 'About Us'" do
	    #	page.should have_selector('title',
	    #					 text: "Ruby on Rails Tutorial Sample App | About Us")
	    #end

	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_selector('h1', text: 'Contact') }

    	it { should have_selector('title', text: full_title('Contact')) }

		#it "should have the h1 'Contact'" do
		#	#page.should have_selector('h1', :text => 'Contact')
		#	page.should have_content('Contact')
		#end

	    #it "should have the title 'Contact'" do
	    #	page.should have_selector('title',
	    #					 text: "Ruby on Rails Tutorial Sample App | Contact")
	    #end

	end

end





