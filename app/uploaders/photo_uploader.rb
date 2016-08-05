# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base


  # Include RMagick or MiniMagick support:
   include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def store_path(for_file = filename)
    "#{store_dir}#{(version_name || :original).to_s}.jpg"
  end


  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
   def scale(width, height)
  #   # do something
   end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :scale => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end
#version :jpg do
#      process :convert_to_jpeg
#end

version :logo do
   process :convert => :jpg
   process :scale => [190, 90]
   process :resize_to_fill => [190,90]
  #process :resize_to_limit => [600, 600]
    #process :dynamic_resize_to_fit => :small
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end
end



version :thumb do
   process :convert => :jpg
   process :scale => [200, 113]
   process :resize_to_fill => [200,113]
  #process :resize_to_limit => [600, 600]
    #process :dynamic_resize_to_fit => :small
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end
end


version :small do
   process :convert => :jpg
   process :scale => [800, 600]
   process :resize_to_fill => [400,400]
  #process :resize_to_limit => [600, 600]
    #process :dynamic_resize_to_fit => :small
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end
end
version :medium do
   process :convert => :jpg
   process :scale => [1024, 768]
   process :resize_to_fill => [800,600]
    #process :dynamic_resize_to_fit => :medium
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end
end
version :large do
   process :convert => :jpg
   process :scale => [1600, 1200]
   process :resize_to_fill => [1024,768]
   # process :dynamic_resize_to_fit => :large
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end
end
version :max do
   process :convert => :jpg
   process :scale => [2272, 1704]
   # process :dynamic_resize_to_fit => :max
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end 

version :large do
   process :convert => :jpg
   process :scale => [400, 300]
   process :resize_to_fill => [300,300]
   # process :dynamic_resize_to_fit => :large
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end
end

version :logo do
   process :convert => :jpg
   process :scale => [100, 200]
 def filename
    super.chomp(File.extname(super)) + '.jpg'
  end
end

end
 #def dynamic_resize_to_fit(size)
 #   resize_to_fit *(model.class::IMAGE_SIZES[size])
 # end

  # here's the metaprogramming magic!
  # we check if the called method matches "has_VERSION_size?"
  # VERSION is a version name for image size
 # def method_missing(method, *args)
    # we've already defined "has_VERSION_size?", so if a method with
    # similar name is missed, it should return false
  #  return false if method.to_s.match(/has_(.*)_size\?/)
  #  super
 # end

# def custom_dimension
 #     width =  model.get_image_width     
  #    height = model.get_image_height

   #   manipulate! do |img|
    #    img.convert "#{width}x#{height}"
       # img
     # end
  #end

#end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
# protected
  # the method called at the start
  # it checks for <model>::IMAGE_SIZES hash and define a custom method "has_VERSION_size?"
  # (more on this later in the article)
 # def setup_available_sizes(file)
 #   model.class::IMAGE_SIZES.keys.each do |key|
 #     self.class_eval do
 #       define_method("has_#{key}_size?".to_sym) { true }
 #     end
 #   end
 #  end

end
