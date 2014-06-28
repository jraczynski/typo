Given /^the following articles created by "(.*?)" exist$/ do |user_name, table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes.collect {|article| article.merge({ :user_id => User.find_by_name(user_name).id }) }
end

Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eq body
end
