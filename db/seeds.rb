require_relative('../models/student.rb')
require_relative('../models/house.rb')
require ('pry-byebug')

Student.delete_all()
House.delete_all()

gryffindor = House.new({'name' => 'Gryffindor', 'logo'=>'https://s-media-cache-ak0.pinimg.com/736x/77/c9/c1/77c9c1ab7fb1cbd41a551677f92bae82--hogwarts-houses-crests.jpg'})

slytherin = House.new({'name' => 'Slytherin', 'logo'=>'https://s-media-cache-ak0.pinimg.com/736x/e7/1e/50/e71e509f2d73aca3674b3a550f54ad4d--slytherin-house-hogwarts-houses.jpg'})

hufflepuff = House.new({'name' => 'Hufflepuff', 'logo'=>'https://s-media-cache-ak0.pinimg.com/originals/e0/e2/bc/e0e2bca469b63385d89ec2f1250e4ca5.jpg'})

ravenclaw = House.new({'name' => 'Ravenclaw', 'logo'=>'http://vignette3.wikia.nocookie.net/harrypotter/images/9/94/Ravenclaw_Logo.jpg/revision/latest?cb=20140627182803'})

gryffindor.save()
slytherin.save()
ravenclaw.save()
hufflepuff.save()

student1 = Student.new({
"first_name" => "Harry",
"second_name"=> "Potter",
"house_id" => gryffindor.id,
"age" => 14
})
student2 = Student.new({
"first_name" => "Hermione",
"second_name"=> "Granger",
"house_id" => gryffindor.id,
"age" => 14
})
student3 = Student.new({
"first_name" => "Ron",
"second_name"=> "Weasley",
"house_id" => gryffindor.id,
"age" => 13
})
student4 = Student.new({
"first_name" => "Draco",
"second_name"=> "Malfoy",
"house_id" => slytherin.id,
"age" => 15
})
student5 = Student.new({
"first_name" => "Luna",
"second_name"=> "Lovegood",
"house_id" => ravenclaw.id,
"age" => 12
})
student6 = Student.new({
"first_name" => "Cedric",
"second_name"=> "Diggory",
"house_id" => hufflepuff.id,
"age" => 16
})

student1.save()
student2.save()
student3.save()
student4.save()
student5.save()
student6.save()

binding.pry
nil
