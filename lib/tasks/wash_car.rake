desc 'Sends a reminder Mark'
task :wash_car => :environment do
  output = Contact.find_by(name: "Geo").send_reminder("Remember to wash the car")
end