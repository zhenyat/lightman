################################################################################
# Model:  Event
#
# Purpose:
#
# Event attributes:
#   title            - title:       string,  not NULL
#   kind             - kind:        string
#   started_on       - started_on:  date
#   finished_on      - finished_on: date
#   content          - content:     text
#   cover            - cover:       string
#   status           - status:      enum { active (0) | archived (1) }
#
#  18.09.2017 ZT
################################################################################
class Event < ApplicationRecord
  mount_uploader :cover, CoverUploader

  enum status: %w(active archived)

  validates :title,       presence: true
  validates :kind,        presence: true
  validates :started_on,  presence: true
  validates :finished_on, presence: true
  validates :content,     presence: true
end
