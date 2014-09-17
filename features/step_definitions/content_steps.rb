Given(/^there is content in the application$/) do
  class Tutorial
    include Experience

    content(:headline, :id => 'headline')
  end
end

When(/^I read the content$/) do
  @content = Tutorial.headline
end

Then(/^I will know what it says$/) do
  expect(@content).to eq '"Experience" Models User Interactions'
end