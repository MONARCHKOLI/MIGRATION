class AddRecordsToDemoTable < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        10.times do |i|
          puts "creating dummy #{i+1}"
          Article.create(
            title:"dummy #{i+1}",
            status:"true"            
          )  
        end
    end
  end
end
end
