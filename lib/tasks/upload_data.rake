namespace :order_report do
  desc 'Upload Report'
  task :upload_report  => :environment do
    puts "Process Started at : [#{Time.now}]"
    begin
      upload_report = CarParkingsController.new.create
    rescue Exception => ex
      msg = "Error: #{ex.message}"
    end
    puts "Process ends at : [#{Time.now}]"
  end
end