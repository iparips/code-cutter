$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'csv'
require 'json'
require 'code_cutter/reader'

namespace :csv do

  OUTPUT_DIR = File.expand_path('../../out', __FILE__)
  OUTPUT_FILE_NAME = 'questions.json'
  INPUT_FILE_PATH = File.expand_path('../../data/questions.csv', __FILE__)

  desc 'csv to json'
  task :to_json do
    rm_rf OUTPUT_DIR
    mkdir OUTPUT_DIR
    questions = CodeCutter::Reader.read_questions(INPUT_FILE_PATH)
    write_quesitons_to_json_file(questions)
  end

  def write_quesitons_to_json_file(questions)
    json = to_json_string(questions)
    File.open(output_file_path, 'w+') do |f|
      f.write(json)
    end
  end

  def output_file_path
    File.expand_path(File.join(OUTPUT_DIR, OUTPUT_FILE_NAME))
  end

  def to_json_string(questions)
    { questions: questions.map(&:to_h) }.to_json
  end

end
