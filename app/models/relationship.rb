class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "Actor"
  belongs_to :followed, class_name: "Actor"
end
