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
      And  { expect( completion.lesson.title ).to be_nil }
      And  { expect( completion.score ).to be_nil }
      And  { expect( completion.report_card.url ).to be_nil }
      And  { expect( completion.completed_at ).to be_nil }
      And  { expect( completion.started_at ).to be_nil }
      And  { expect( completion.assigned_at ).to be_nil }
      And  { expect( completion.candidate.id ).to be_nil }
      And  { expect( completion.candidate.ext_id ).to be_nil }
      And  { expect( completion.candidate.name ).to be_nil }
      And  { expect( completion.candidate.email ).to be_nil }
    end
  end
  
end
