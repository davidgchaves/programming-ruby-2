Song = Struct.new(:title, :name, :length)

File.open("songdata") do |song_file|
  songs = []
  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    clean_name = name.squeeze " "
    mins, secs = length.scan(/\d+/)
    length_in_seconds = mins.to_i * 60 + secs.to_i
    songs << Song.new(title, clean_name, length_in_seconds)
  end

  puts songs
end
