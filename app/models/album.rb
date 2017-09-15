################################################################################
# Model:  Album
#
# Purpose:
#
# Album attributes:
#   title             - title:           string,  not NULL
#   cover             - cover image:     stringcontent           - content:  text
#   images            - images gallery:  json
#   position          - sorting index:   integer, not NULL
#   status            - status:          enum { active (0) | archived (1) }
#
#  09.09.2017 ZT
################################################################################
class Album < ApplicationRecord
  mount_uploaders :images, ImageUploader
  mount_uploader  :cover,  CoverUploader
  
  before_save     :set_position

  enum status: %w(active archived)

  validates :title, presence: true

  private

    def set_position
      if self.id.blank?
        last_item = Album.order(:position).last
        self.position = last_item.blank? ? 1 : last_item.position.to_i + 1
      end
    end
end
