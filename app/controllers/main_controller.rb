class MainController < ApplicationController
  def index
  end

  def mailsend
    require 'net/smtp'
    require 'kconv'
    mail_settings = YAML.load(File.read("#{RAILS_ROOT}/config/mail.yml"))
    unsends = Email.find(:all, :conditions => ["sentmail = ?", false])
    if unsends.any?
      unsends.each do |unsend|
        s = unsend.template.subject.gsub(/\{salutation\}/,unsend.address.salutation)
        b = unsend.template.content.gsub(/\{salutation\}/,unsend.address.salutation)
        Net::SMTP::start(mail_settings['smtp_server'], port = mail_settings['port'],
                         helo_domain = mail_settings['domain'], mail_settings['user_name'],
                         mail_settings['password'], authtype = mail_settings['authentication'] ) do |smtp| 
          smtp.open_message_stream(mail_settings['address'],["#{unsend.address.address}"]) do |stream|
            stream.puts "From: #{mail_settings['address']}"
            stream.puts "To: #{unsend.address.address}"
            stream.puts "Subject: #{s.tojis}"
            stream.puts "Content-Type: text/plain;charset=UTF-8"
            stream.puts "Content-Transfer-Encoding: 8bit"
            stream.puts
            stream.puts "#{b}"
          end
        end
        unsend.sentmail = true
        unsend.save
      end
      flash[:notice] = 'Email was successfully send.'
    else
      flash[:notice] = 'No email was send.'
    end
    redirect_to :controller => 'emails', :action => 'index'
  end

end
