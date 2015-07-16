FactoryGirl.define do
  factory :plan, :class => 'Plans' do
    user nil
notes "MyText"
from_date "2015-07-16"
to_date "2015-07-16"
  end

end
