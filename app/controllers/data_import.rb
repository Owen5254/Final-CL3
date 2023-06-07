require 'roo'

xlsx = Roo::Excelx.new('app/111_result_school_data.xlsx')
xlsx.each_row_streaming do |row|
  # 讀取每一行的資料
  row_cells = row.map(&:value)
  school = row_cells[1]
  department = row_cells[2]

  if row_cells[5] != "-----"
    scores = row_cells[5]
  else
    scores = 0
  end

  weight = row_cells[3]

  Stander.create(school: row_cells[1], department: row_cells[2], scores: row_cells[5], weight: row_cells[3])
end


