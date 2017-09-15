################################################################################
# Model:  Tour
#
# Purpose:
#
# Tour attributes:
#   title       - title:              string,  not NULL
#   started_on  - Tour's start_date : date,    not NULL
#   finished_on - Tour's finish_date: date,    not NULL
#   content     - content:            text,    not NULL
#   cover       - cover:              string
#   status      - status:             enum { active (0) | archived (1) }
#
#  09.09.2017 ZT
################################################################################
class Tour < ApplicationRecord
  mount_uploader :cover, CoverUploader
  
  enum status: %w(active archived)

  validates :title,       presence: true
  validates :started_on,  presence: true
  validates :finished_on, presence: true
  validates :content,     presence: true
end
