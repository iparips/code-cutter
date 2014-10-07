require 'ostruct'

module CodeCutter

  class Question < OpenStruct

    class << self

      def from_csv_record(record)
        args = {
            tags: parse_tags(record.fetch('Area')),
            body: record.fetch('Question'),
            answerOptions: parse_answer_options(record.fetch('Answer Options / Score')),
            notes: parse_notes(record.fetch('Notes'))
        }

        Question.new(args)
      end

      private

      def parse_tags(string)
        string.split(',').map(&:strip)
      end

      def parse_answer_options(string)
        options = string.split('-').map(&:strip)

        result = {}
        options.map do |o|
          option_and_score = o.split(':')
          result[option_and_score.first] = Float(option_and_score.last)
        end

        result
      end

      def parse_notes(string)
        string ? string : ''
      end

    end

  end

end
