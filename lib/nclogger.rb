require 'colorize'
require 'optparse'
require 'parseconfig'
require 'time'
require 'date'

# We want to load all .rb files in the /lib/nclogger folder including subfolders
library_files = Dir[File.join(File.dirname(__FILE__), '/nclogger/**/*.rb')].sort
library_files.each do |file|
    require file
end

class NCLogger
  def set_severity(severity)
    @severity = severity
    self
  end

  def set_message(message)
    @message = message
    self
  end

  def write
    time = Time.new
    puts "[#{time.strftime('%Y-%m-%d')}] [#{@severity}] #{@message}"
  end
end
