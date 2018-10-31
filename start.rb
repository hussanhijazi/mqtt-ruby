require 'rubygems'
require 'mqtt'

temperature_topic = 'temperature'

MQTT::Client.connect('test.mosquitto.org') do |c|
  c.get(temperature_topic) do |topic,message|
    puts "#{topic}: #{message}"
  end
end
