class Comment < ApplicationRecord
  CONTENT_LENGTH = 3..511


  belongs_to :course
  belongs_to :user
  
  validates :content, presence: true, length: { in: CONTENT_LENGTH }

end
