# encoding: utf-8
Refinery::Resources.configure do |config|
  # Configures the maximum allowed upload size (in bytes) for a file upload
  # config.max_file_size = 52428800

  # Configure how many resources per page should be displayed when a dialog is presented that contains resources
  # config.pages_per_dialog = 12

  # Configure how many resources per page should be displayed in the list of resources in the admin area
  # config.pages_per_admin_index = 20

  # Configure S3 (you can also use ENV for this)
  # The s3_backend setting by default defers to the core setting for this but can be set just for resources.
   config.s3_backend = Refinery::Core.s3_backend
   config.s3_bucket_name = ENV['S3_BUCKET']
   config.s3_access_key_id = ENV['AWS_ACCESS_KEY_ID']
   config.s3_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
   #config.s3_region = ENV['S3_REGION']

  # Configure Dragonfly
  # This is where in the middleware stack to insert the Dragonfly middleware
  # config.dragonfly_insert_before = "ActionDispatch::Callbacks"
  # config.dragonfly_secret = "895e1a26250d492a78c2bcfeb5260468cfc28dd7d56ea5bc"
  # config.dragonfly_url_format = "/system/resources/:job/:basename.:format"
  # config.datastore_root_path = "/Users/ceinterone17/rails_projects/rf_base/public/system/refinery/resources"

end
