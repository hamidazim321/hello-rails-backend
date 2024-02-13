['hello', 'salam', 'pakher', 'hola', 'bonjour'].each do |msg|
  Message.find_or_create_by!(text: msg)
end

puts 'seed db with greetings'
