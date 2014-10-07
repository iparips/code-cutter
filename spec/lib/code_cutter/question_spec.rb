require 'spec_helper'
require 'json'

module CodeCutter

  describe Question do

    let(:record) {
      {
          'Area' => 'category 1, category 2',
          'Question' => 'question',
          'Answer Options / Score' => 'no:0 - yes:1',
          'Notes' => 'clarification'
      }
    }

    describe '.read_from_csv' do

      subject { Question.from_csv_record(record) }

      describe 'tags' do

        it 'have cat 1' do
          expect(subject.tags).to include 'category 1'
        end

        it 'have cat 2' do
          expect(subject.tags).to include 'category 2'
        end

      end

      it 'has body' do
        expect(subject.body).to eq 'question'
      end

      it 'has notes' do
        expect(subject.notes).to eq 'clarification'
      end

      describe 'response options' do

        it 'includes yes with a score of 1' do
          expect(subject.answerOptions).to include({ 'yes' => 1 })
        end

        it 'includes no with a score of 0' do
          expect(subject.answerOptions).to include({ 'no' => 0 })
        end

      end

    end

    # TODO: all error cases are missing

  end

end
