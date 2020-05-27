require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }
end

describe Survey do
  it("titleizes a survey") do
    survey = Survey.create({name: "this is a test"})
    expect(survey.name()).to(eq("This is a Test"))
  end
end