require 'pry'
def nyc_pigeon_organizer(data)
  new_pigeons = {}
  data.each do |attributes, nested_attr|
    nested_attr.each do |key, value|
      value.each do |name|
      if !new_pigeons[name]
         new_pigeons[name] = {}
      end
      if !new_pigeons[name][attributes]
        new_pigeons[name][attributes] = []
      end
      new_pigeons[name][attributes] << key.to_s
    end
    binding.pry
  end
  end
  new_pigeons
  # binding.pry
end

# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }