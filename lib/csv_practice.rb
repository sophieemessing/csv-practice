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

olympic_athletes = get_all_olympic_athletes("data/athlete_events.csv")

def total_medals_per_team(data)

  # This little test is not working.
  # norway = []
  # data.each do |athlete|
  #   if athlete["Team"] = "Norway"
  #     norway << athlete["Medal"] if athlete["Medal"] != "NA"
  #   end
  # end
  # return norway

end


def get_all_gold_medalists(olympic_data)
end
