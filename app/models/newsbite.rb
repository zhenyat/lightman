################################################################################
# Model:  Newsbite
#
# Purpose: News publication
#
# Newsbite attributes:
#   title             - title:                string,  not NULL
#   content           - content:              text,    not NULL
#   cover             - cover picture:        string
#   published_on      - Date to be pulished:  date
#   status            - status:               enum { active (0) | archived (1) }
#
#  09.09.2017 ZT
################################################################################
class Newsbite < ApplicationRecord
  mount_uploader :cover, CoverUploader
  
  enum status: %w(active archived)

  validates :title,   presence: true
  validates :content, presence: true
  
  scope :actual, -> {where 'published_on <= ?', Date.today}
end
