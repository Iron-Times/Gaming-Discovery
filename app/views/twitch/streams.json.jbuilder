# streamers = {}
# array = []
# json.array! @twitch.each do |stream|
#   next if stream.viewer_count < 5
#     array << stream
#     array.sort_by {|stream| stream.viewer_count}
#     array
#   end
#     array.each_with_index do |stream, i|
#       break if i == 10
#       streamers[stream.viewer_count] = stream.url
#       streamers
#     end
# json.extract! streamers
# end
