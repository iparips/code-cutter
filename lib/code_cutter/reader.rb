require 'code_cutter/question'

module CodeCutter

  module Reader

    class << self

      def read_questions(file_path)
        csv = CSV.read(file_path, headers: true, col_sep: '|')
        csv.map { |record| Question.from_csv_record(record) }
      end

    end

  end

end
