module CodeCutter

  class Question < OpenStruct

    class << self

      def from_csv_record(record)
        args = {
            tags: parse_tags(record.fetch('Area')),
            body: record.fetch('Question'),
            answer_options: parse_answer_options(record.fetch('Answer Options')),
            notes: parse_notes(record.fetch('Notes'))
        }

        Question.new(args)
      end

      private

      def parse_tags(string)
        string.split(',').map(&:strip)
      end

      def parse_answer_options(string)
        string.split('-').map(&:strip)
      end

      def parse_notes(string)
        string ? string : ''
      end

    end

  end

end
