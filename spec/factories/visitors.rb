FactoryGirl.define do
  factory :visitor do
    name "MyString"
    arrived_at "2016-10-05 11:07:44"
    departed_at nil
    host_id 1
    host_name "MyString"
    visit_purpose "MyText"
    status "MyString"
    creator_id 1
  end
end
