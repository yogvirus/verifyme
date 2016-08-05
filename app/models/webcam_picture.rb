class WebcamPicture < ActiveRecord::Base
  attr_accessible :name, :snapshot, :remote_snapshot_url, :snapshot_cache, :customer_id
  mount_uploader :snapshot, WebcamUploader
end
