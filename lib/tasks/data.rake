require 'csv'

namespace :data do
  task :load_employees => :environment do
    Employee.delete_all
    
    CSV.open(Rails.root.join('employees.csv'), 'r') do |row|
      
        # ,沈雯,男,江苏,1961.09.28,初中,群众,虹口区溧阳路449号,310109196109281217,13022156612,,1981.12,
      # 工号  姓名  性别  籍贯  出生年月日 学历  政治面貌  家庭住址（实际居住地） 身份证号码 联系电话（手机）  参加工作年月  进环卫年月 备注
      begin
      e = Employee.new(
        :code => row[0],
        :name => row[1],
        :sex => row[2],
        :birthplace => row[3],
        :birthday => row[4].nil? ? nil : Date.strptime(row[4], '%Y.%m.%d'),
        :educational_background => row[5],
        :politics => row[6],
        :address => row[7],
        :id_card => row[8],
        :contact => row[9],
        :worked_from => row[10].nil? ? nil : Date.strptime(row[10], '%Y'),
        :hired_on => row[11].nil? ? nil : Date.strptime(row[11], '%Y.%m'),
        :remark => row[12]
      )
      e.save(:validate => false)

      rescue
        puts "#{row[8]} #{row[11]} #{row[12]}"
      end
      
    end
  end
end