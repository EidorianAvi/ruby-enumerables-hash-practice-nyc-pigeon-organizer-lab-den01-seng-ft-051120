# def nyc_pigeon_organizer(data)
#   pigeon_list = {}
#   data.each do |key, value| #key = c,g,l value = {}
#     value.each do |descriptor, array|
#       array.each do |name|
#         if pigeon_list[name] == nil 
#           pigeon_list[name] = {}
#         end
#         if pigeon_list[name][key] == nil
#           pigeon_list[name][key] = []
#         end
#         pigeon_list[name][key] << descriptor.to_s 
#       end 
#     end 
#   end
#   pigeon_list
# end 

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |key, value|
    value.each do |value2, array|
      array.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = Hash.new
        end
        if !pigeon_list[name][key]
          pigeon_list[name][key] = Array.new
        end
        pigeon_list[name][key] << value2.to_s
      end
    end
  end
  pigeon_list
end
