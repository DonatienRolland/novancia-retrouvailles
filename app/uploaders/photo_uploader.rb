class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'


  # process :fix_exif_rotation

  # def fix_exif_rotation
  #   manipulate! do |img|
  #     img.auto_orient!
  #     img = yield(img) if block_given?
  #     img
  #   end
  # end


  version :standard do
    resize_to_fit 800, 600
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end




end
