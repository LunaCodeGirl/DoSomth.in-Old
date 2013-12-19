require 'spec_helper'

describe Issue do
  it "is invalid without a title" do
    issue = Issue.new(description: "Nothing!", goal: "Nothing!")
    issue.should_not be_valid
  end
  it "is invalid without a description" do
    issue = Issue.new(title: "Trainspotting", goal: "Nothing!")
    issue.should_not be_valid
  end
  it "is invalid without a goal" do
    issue = Issue.new(title: "Trainspotting", description: "Nothing!")
    issue.should_not be_valid
  end
  it "has a title that matches 'Trainspotting'" do
    issue = Issue.new(title: "Trainspotting")
    issue.title.should match("Trainspotting")
  end
  it "changes the number of issues" do
    issue = Issue.new(title: "Trainspotting", description: "Nothing!", goal: "Nothing!")
    expect {issue.save}.to change {Issue.count}.by(1)
  end
  it "raises an error if saved without a title/description/goal" do
    issue = Issue.new
    expect {issue.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end
end
