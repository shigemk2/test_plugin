# -*- coding: utf-8 -*-

# Plugin.create(:test_plugin) do
#   def main
#     Reserver.new(nextyrhtime) {
#       say_yoruho(Service.primary)
#       sleep 1
#       main }
#   end

#   def nextyrhtime
#     new = Time.new
#     result = Time.local(now.year, now.month, now.day, 15, 22)
#     while result < now
#       result += 1
#     end
#     result
#   end

#   def say_yoruho(service)
#     service.update(message: "ておほー")
#   end
# end
Plugin.create(:test_plugin) do
  i = 0
  while i < 10
    msg = "てすと on mikutter #shigemk2 " + i.to_s
    Service.primary.update(:message => msg)
    i += 1
    sleep 3
  end
end


