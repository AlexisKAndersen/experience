Given(/^there is content in the application$/) do
  class Tutorial
    extend Experience
    content(:headline, :id => 'headline')
  end
end

When(/^I read the content$/) do
  Tutorial.read do |tutorial|
    @content = tutorial.headline
  end
end

Then(/^I will know what it says$/) do
  expect(@content).to eq '"Experience" Models User Interactions'
end