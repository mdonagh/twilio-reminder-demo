desc 'Sends a reminder to all contacts'
task :lesson  => :environment do
  return unless Time.now.strftime("%A").downcase == "Tuesday"
  Contact.all.each do |contact|
    contact.send_reminder("The Monday Lesson is starting at 7PM!!!!")
  end
end