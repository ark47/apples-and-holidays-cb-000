require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  z = holiday_hash[:winter].map do |x, y|
    y
  end
  z.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |x, y|
    puts "#{x.capitalize}:"
      y.each do |z, a|
        b = z.to_s.gsub(/_/, ' ').split
          d = b.map do |c|
            c.capitalize!
          end
          e = d.join(" ")
        puts "  #{e}: #{a.join(', ')}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  b = []
  holiday_hash.each do |x, y|
    y.each do |z, a|
      if a.include?("BBQ")
        b << z
      end
    end
  end
  b
end
