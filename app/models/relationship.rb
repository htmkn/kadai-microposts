class Relationship < ApplicationRecord
  belongs_to :user #,class_mame: 'User'一応
  belongs_to :follow, class_name: 'User'
end
