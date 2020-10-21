class Manager < Employee
  def send_report
    puts "Sending email..."
    #use an email sending library
    puts "Email sent!"
  end

end



manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true)
manager.print_info
manager.send_report