namespace :littleKits do
	desc "Populate initial list of bits."
  task :populate_bits => :environment do
    bit_names = Set.new ["bargraph",
      "bend-sensor",
      "branch",
      "bright-led",
      "button",
      "buzzer",
      "coin-battery",
      "dc-motor",
      "dimmer",
      "doubleand",
      "doubleor",
      "fan",
      "fork",
      "inverter",
      "led",
      "light-sensor",
      "light-trigger",
      "light-wire",
      "long-led",
      "motion-trigger",
      "power",
      "pressure-sensor",
      "pulse",
      "rgb-led",
      "roller-switch",
      "servo-motor",
      "slide-dimmer",
      "slide-switch",
      "sound-trigger",
      "temperature-sensor",
      "timeout",
      "toggle-switch",
      "usb-power",
      "uv-led",
      "vibration-motor",
      "wire"]

    bit_names.each do |bit_name|
      Bit.create({:name => bit_name})
      puts "Bit: #{bit_name} added!"
    end
  end
end