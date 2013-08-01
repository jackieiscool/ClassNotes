#Capybara

##Installing Capybara

In gemfile `gem 'capybara'`  

In spec_helper.rb  

		require 'capybara/rspec'
		require 'capybara/rails'

Create a `spec/features` folder. This is where our capybara specs will go.  

What our capybara specs will look like:  

		describe 'home page' do
		  it 'welcomes the user' do
		    visit '/'
		    page.should have_content('Welcome')
		  end
		end

And our capybara specs for the signing in:  

		describe "the signin process" do
		  before :each do
		    User.make(:email => 'user@example.com', :password => 'password')
		  end

		  it "signs me in" do
		    visit '/sessions/new'
		    within("#session") do
		      fill_in 'Login', :with => 'user@example.com'
		      fill_in 'Password', :with => 'password'
		    end
		    click_link 'Sign in'
		    expect(page).to have_content 'Success'
		  end
		end

Or...  

		feature "Signing in" do
		  background do
		    User.make(:email => 'user@example.com', :password => 'caplin')
		  end

		  scenario "Signing in with correct credentials" do
		    visit '/sessions/new'
		    within("#session") do
		      fill_in 'Login', :with => 'user@example.com'
		      fill_in 'Password', :with => 'caplin'
		    end
		    click_link 'Sign in'
		    expect(page).to have_content 'Success'
		  end

		  given(:other_user) { User.make(:email => 'other@example.com', :password => 'rous') }

		  scenario "Signing in as another user" do
		    visit '/sessions/new'
		    within("#session") do
		      fill_in 'Login', :with => other_user.email
		      fill_in 'Password', :with => other_user.password
		    end
		    click_link 'Sign in'
		    expect(page).to have_content 'Invalid email or password'
		  end
		end

