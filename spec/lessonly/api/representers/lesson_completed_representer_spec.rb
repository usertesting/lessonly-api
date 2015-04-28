require 'spec_helper'

describe Lessonly::Api::Representers::LessonCompletedRepresenter do

  describe "parsing incoming json" do
    context "when the json is empty" do
      Given(:json) { {} }
      Given(:parser) { 
        Lessonly::Api::LessonCompletion.
          new.
          extend(Lessonly::Api::Representers::LessonCompletedRepresenter) 
      }
      When(:completion) { parser.from_json(json) }
      Then { expect( completion.lesson.id ).to be_nil }
      Then { expect( completion.lesson.title ).to be_nil }
      Then { expect( completion.score ).to be_nil }
      Then { expect( completion.report_card_url ).to be_nil }
      Then { expect( completion.completed_at ).to be_nil }
      Then { expect( completion.started_at ).to be_nil }
      Then { expect( completion.assigned_at ).to be_nil }
      Then { expect( completion.candidate.id ).to be_nil }
      Then { expect( completion.candidate.ext_uid ).to be_nil }
      Then { expect( completion.candidate.name ).to be_nil }
      Then { expect( completion.candidate.email ).to be_nil }
    end

    context "with real data" do
      Given(:json) {
        '{"user": 
           {
            "id": "1","ext_uid": "W123","name": "Sample Sampleson","email": "sample@company.com","custom_fields": {"Custom Field": "Custom Field Value"}
          },
          "lesson": {"id": "1000","title": "A Sample Lesson"},
          "score": 1.0,
          "started_at": "2015-04-28T14:36:22Z",
          "completed_at": "2015-04-28T14:36:24Z",
          "assigned_at": "2015-04-28T14:36:18Z",
          "report_card_url": "http://sample.lesson.ly/assignments/100"}'
      }
      Given(:parser) { 
        Lessonly::Api::LessonCompletion.
          new.
          extend(Lessonly::Api::Representers::LessonCompletedRepresenter) 
      }
      When(:completion) { parser.from_json(json) }
      Then { expect( completion.lesson.id ).to eql("1000") }
      Then { expect( completion.lesson.title ).to eql("A Sample Lesson") }
      Then { expect( completion.score ).to eql(1.0) }
      Then { expect( completion.report_card_url ).to eql("http://sample.lesson.ly/assignments/100") }
      Then { expect( completion.completed_at ).to eql("2015-04-28T14:36:24Z") }
      Then { expect( completion.started_at ).to eql("2015-04-28T14:36:22Z") }
      Then { expect( completion.assigned_at ).to eql("2015-04-28T14:36:18Z") }
      Then { expect( completion.candidate.id ).to eql("1") }
      Then { expect( completion.candidate.ext_uid ).to eql("W123") }
      Then { expect( completion.candidate.name ).to eql("Sample Sampleson") }
      Then { expect( completion.candidate.email ).to eql("sample@company.com") }
    end
  end
  
end
