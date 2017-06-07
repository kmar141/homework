require_relative '../models/student'
require_relative '../models/house'

house1 = House.new(
{'name' => 'Stark',
  'url' => 'https://vokpodcast.files.wordpress.com/2016/09/jon-snow.jpg?w=500'
  })

house2 = House.new(
{'name' => 'Lannister',
  'url' => 'https://i.imgur.com/eWxK3Fq.png'
  })

house3 = House.new(
{'name' => 'Tyrell',
  'url' => 'https://oi1105.photobucket.com/albums/h351/wolfbrother2/ShittyMSSigil_zps8612f207.png'
  })

house4 = House.new(
{'name' => 'Targaryen',
  'url' => 'http://i3.photobucket.com/albums/y85/Swifthawk27/silly%20me/dragonforcos.png'
  })

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new(
  {'first_name' => 'Hans',
  'last_name' => 'Moleman',
  'house_name' => house1.id,
   'age' => 73
   })

student2 = Student.new(
  {'first_name' => 'Jon',
  'last_name' => 'Snow',
  'house_name' => house2.id,
   'age' => 68
   })

student3 = Student.new(
  {'first_name' => ' Shaq',
  'last_name' => 'Attack',
  'house_name' => house3.id,
   'age' => 40
   })

student4 = Student.new(
  {'first_name' => 'Eve',
  'last_name' => 'Online',
  'house_name' => house4.id,
   'age' => 1337
   })


student1.save()
student2.save()
student3.save()
student4.save()












