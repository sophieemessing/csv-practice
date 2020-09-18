require 'csv'
require 'awesome_print'

def get_all_olympic_athletes(filename)

  olympic_athletes = []

  CSV.read(filename, headers: true).each do |data|

    athlete = {}

    athlete["ID"] = data[0]
    athlete["Name"] = data[1]
    athlete["Height"] = data[4]
    athlete["Team"] = data[6]
    athlete["Year"] = data[9]
    athlete["City"] = data[11]
    athlete["Sport"] = data[12]
    athlete["Event"] = data[13]
    athlete["Medal"] = data[14]

    olympic_athletes << athlete
  end

  return olympic_athletes
end

def total_medals_per_team(data)
  medals = Hash.new(0)
  data.each do |athlete|
    if athlete["Medal"] != "NA"
      medals[athlete["Team"]] += 1
    end
  end
  return medals
end

def get_all_gold_medalists(data)
  gold_medalists = []
  data.each do |athlete|
    if athlete["Medal"] == "Gold"
      gold_medalists << athlete
    end
  end
  return gold_medalists
end