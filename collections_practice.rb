def count_elements(array)
  new_array = []
  counts = Hash.new 0
  array.each do |objects|
    objects.each do |key, value|
      counts[value] += 1
    end
  end
  counts.each do |name, count|
    new_array << {name: name, count: count}
  end
  new_array
end

#data = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#count_elements(data)

#keyz = [{:first_name => "blake"}, {:first_name => "ashley"}]
dataz = [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
]

def merge_data(keys, data)
  merged_array = []
  keys.each do |obj|
    puts obj
    name_key = obj[:first_name]
    #puts name_key
    data.each do |hash|
      puts hash
      hash.each do |name_data, stats|
        #puts name_data
        if name_key == name_data
          #puts name_data
          merged_hash = {obj.key(name_key) => name_key}
          merged_array << merged_hash.merge(stats)
        end
      end
    end
  end
  merged_array
end

#merge_data(keyz,dataz)


cool = [
            {
                   :name => "ashley",
            :temperature => "sort of cool"
        },
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]

def find_cool(array)
  new_array = []
  array.each do |hash|
    temperature= hash[:temperature]
    if temperature == 'cool'
      new_array.push(hash)
    end
  end
  new_array
end

#find_cool(cool)

##for each location, create a hash pointing to empty array
#making sure that the locatio does not exist already
##then iterate through the original hash and push the name of the school with that location to the new hash

def organize_schools(schools)
  new_hash = {}
  schools.each do 
    |school_name, location_hash|
    new_array = []
    location_checker = location_hash[:location]
    location_hash.each do
      |label, location|
      #puts new_array
      if location_checker == location
        new_array << school_name
      end
      new_hash[location] = new_array
    end
     #puts new_hash
  end
  new_hash
end

school_hash = 
      {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }

##for each location, create a hash pointing to empty array
#making sure that the locatio does not exist already
##then iterate through the original hash and push the name of the school with that location to the new hash
    
def organize_schools(school_hash)
  organized_hash = {}
  school_hash.each do |school_name, location_hash|
    location = location_hash[:location]
    organized_hash[location] = []
  end
  organized_hash.each do |schools_by_location|
    schools_by_location.each do |location_key, array_of_schools|
      school_hash.each do |school_name, location_hash|
        location = location_hash[:location]
        if location_key == location
          organized_hash[location_key] << school_name
        end
      end
    end
  end
  organized_hash
end
    
organize_schools(school_hash)
  
