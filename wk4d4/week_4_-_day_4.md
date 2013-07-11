#Week 4 - Day 4


##Git
```
git init
git add .
git add filename

git commit -m "message of commit"

git push origin master
git pull origin master

git checkout -b branch_name
git checkout
git checkout -b

git merge
```

##Rspec Rails
Add rspec to your envionment

`gem install rspec`


**Add RSpec to your rails project**  

```
group :test, :development do
	gem 'rspect-rails', "~2.0"
end

```

**Create Folder Structure**

Add `spec` folder to project
and file `spec_helper.rb`

```
ENV["RAILS_ENV"] ||= 'test' require File.expand_path("../../config/environment", __FILE__) require 'rspec/rails'
spec_helper.rb
```

```
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_base_class_for_anonymous_controllers = false

  config.order = "random"
end

```


**Testing Models**

Create folder `models` in your `spec` folder

Create a file named `modelName_spec.rb`

Test models to ensure associations

```
require 'spec_helper'

describe Survey do

  it { should have_many(:questions) }
  it { should have_many(:answers).through(:questions) }

end
```

**Testing Controllers**

Create folder `controllers` in your `spec` folder

Create a fie named `name_controller_spec.rb`

```
require 'spect_helper'

describe PollsController do
	
	describe "GET index" do
	
		It "assigns @polls" do
			poll = Poll.create(name: "fake poll")
			get :index
			expect(assigns(:polls)).to eq([poll])

	end

end


```

`expect` is more often used in controllers
`should` is more often used in models
