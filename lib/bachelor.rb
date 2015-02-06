require "pry"
def get_first_name_of_season_winner(data, season)
    data.each do |season_number, bachelorsarray|
      #season = season number bachelorsarray = [{name => "beth"}]
      bachelorsarray.each do |bachelor|
        bachelor.each do |status, value|
          #status = name, age  value = "beth, 26"
          if season_number == season
              name = value.split(" ")
              return name[0]
          # binding.pry
          end
        end
      end
    end
end

def get_contestant_name(data, occupation)
    data.each do |season_number, bachelorsarray|
      #season = season number bachelorsarray = [{name => "beth"}]
      bachelorsarray.each do |bachelor|
        bachelor.each do |status, value|
          #status = name, age  value = "beth, 26"
          if value == occupation
              return bachelor["name"]
            # binding.pry
          end
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
    count = 0
    data.each do |season_number, bachelorsarray|
        #season = season number bachelorsarray = [{name => "beth"}]
      bachelorsarray.each do |bachelor|
        bachelor.each do |status, value|
            #status = name, age  value = "beth, 26"
          if value == hometown
                count += 1
          end
        end
      end
    end
  count
end

def get_occupation(data, hometown)
  data.each do |season_number, bachelorsarray|
      #season = season number bachelorsarray = [{name => "beth"}]
      bachelorsarray.each do |bachelor|
        bachelor.each do |status, value|
          #status = name, age  value = "beth, 26"
          if value == hometown
            return bachelor["occupation"]
          end
        end
      end
    end
end

def get_average_age_for_season(data, season)
    count = 0
    age = 0
    data.each do |season_number, bachelorsarray|
        #season = season number bachelorsarray = [{name => "beth"}]
        bachelorsarray.each do |bachelor|
          bachelor.each do |status, value|
            #status = name, age  value = "beth, 26"
            if season_number == season
                number = bachelor["age"]
                count += 1
                age += number.to_f
                # binding.pry
            end
          end
        end
      end
     average = age/count
     # binding.pry
     average.round
end
