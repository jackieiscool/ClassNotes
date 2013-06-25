### Homework Review

How could this homework be phrased better?
- Clearer instructions on how to store data

Ways we could have stored data:
- csv
- json
- array

Who should be picking groups?
- Should a student pick groups? Probably not.
- Picking groups and picking people shouldn't be a students behavior
- A Picker class could pick the students/groups

The only behavior we need from student so far is initialize.
note: The student class should be saved in student.rb

    class Student

    	attr_reader :name, :email, :phone

    	def initialize(student)
    		@name = student["name"]
    		@email = student["email"]
    		@phone = student["phone"]
    	end

    end

We can also have a people_picker.rb file (a PeoplePicker class will go here).
The PeoplePicker class is in charge of picking people.

		class PeoplePicker

			def initialize
				# code goes here
			end

			def pick_students
				# code goes here
			end

			def pick_groups
				# code goes here
			end

		end

We can save our students in a third file called students.json, and store a json object here.
- json is always strings. It will turn numbers and symbols into strings.
- Ruby has a module to turn json strings into symbols, but json itself is a string.

Code should always be put into functions

		data.each do |student|
			student_list << Student.new(student)
		end

	could be...

		def add_students(data)
			student_list = []
			data.each do |student|
				student_list << Student.new(student)
			end
		end

Refactoring (a.k.a. making things shorter)

	We can create groups and print out the names at the same time.
		def choose_groups(student_list, number)
			if ('-g' == flag)
				student_list.shuffle.each_slice(number) do |groups|
				p '____________'
				# p groups We don't need this line
				groups.each { |student| 
					puts student.name + " " + student.phone
				}
			end
		end


