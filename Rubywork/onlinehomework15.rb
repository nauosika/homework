#請配合 faker 這個 gem，完成以下 Rake 程式：
#rake profile:generate  # 隨機產生三組個人資料
# gem install faker
# vi rake

require 'faker'

desc "隨機產生三組個人的資料"
namespace :profile
  task :generate
    3.times { puts "#{Faker::Name.name}<#{Faker::Internet.email}"}
  end
end  

#rake -T
#rake profile:generate