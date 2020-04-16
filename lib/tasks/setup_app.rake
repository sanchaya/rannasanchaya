desc "Setup app for first time"
task :setup_app => :environment do
  puts ">>>>>>>>>>>>>>Setting up an app it may take much time. Please run it in backgroud  >>>>>>>>>"
  puts ">>>> Creating database if not <<<<<<<<<<<<<"
  Rake::Task["db:setup"].invoke
  puts ">>>>>>>>>>>>>>>>importing csv it is not dynamic please change below for each instance<<<<<<<<<<<<<<<<<<<"
  Rake::Task["import_kaviraja_from_csv"].invoke
  puts "creating unique words"
  Rake::Task["create_uniq_words_3"].invoke
  puts "concordance for poems"
  Rake::Task["update_concordance_for_poems_4"].invoke
  puts "concordance for unique words"
  Rake::Task["update_concordance_for_key_words_5"].invoke
end
