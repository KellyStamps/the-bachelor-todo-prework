def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_name, array|
    if season_name.to_s == season
      data[season_name].each do |all_girls_info|
        puts all_girls_info["status"]
        if all_girls_info["status"] == "Winner"
          name = all_girls_info["name"]
          return name.slice(0...(name.index(" ")))
        end
      end
    end
  end
  return "No Winner!"
end

def get_contestant_name(data, occupation)
  # code here
  final = ""
  data.each do |season, array|
    array.each do |season_array_index|
      if season_array_index["occupation"] === occupation
        final += "#{season_array_index["name"]}, "
      end
    end
  end
  if final === ""
    return "No one has that occupation!"
  else
    return final.slice(0..(final.length-3))
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, info|
    info.each do |season_index|
      if season_index["hometown"] === hometown
        counter += 1
      end
    end
  end
  if counter > 0
    return counter
  else
    return "There are no contestants from that hometown!"
  end
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |season_index|
      if season_index["hometown"] === hometown
        return season_index["occupation"]
      end
    end
  end
  return "There is no contestant from that hometown!"
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  ages_total = 0

data.each do |data_season, array|
  if data_season.to_s === season
    array.each do |season_index|
      ages_total += season_index["age"].to_f
      counter+=1
    end
  end
end
return (ages_total/counter).round
end
