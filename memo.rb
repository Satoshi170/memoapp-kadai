require "csv"  

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.to_i

if memo_type == 1 || memo_type == 2
  puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。" if memo_type == 1
  puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。" if memo_type == 2
  file_name = gets.to_s
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  input_memo = STDIN.read
  memo = input_memo.chomp
  
  CSV.open("#{file_name}.csv" , "w") do |csv|
    csv.puts ["#{memo}"]
  end

else
  puts "1か2の数字を入力してください"
end  
