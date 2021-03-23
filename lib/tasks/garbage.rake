desc 'Sends a reminder Mark'
task :garbage  => :environment do
return unless Time.now.strftime("%A").downcase == "Wednesday"
  Contact.find_by(name: "Mark").send_reminder("Remember to take out the garbage!")
end