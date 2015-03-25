class DataFile < ActiveRecord::Base
  # attr_accessible :title, :body
   def self.save(img, filename)
    directory = "public/canvas-data"
    # create the file path
    path = File.join(directory, filename)
    # write the file
    File.open(path, "wb") { |f| f.write(Base64.decode64(img)) }
  end
  
  def self.save_image(img,filename)
    directory = "public/mykad-data"
    # create the file path
    path = File.join(directory, filename << ".jpg")
    # write the file
    File.open(path, "wb") { |f| f.write(Base64.decode64(img)) }
  end
  
  def self.photo64(filename)
  
    if File.exists? filename
        @content = File.open(filename).read
      else
        @content = File.open(Rails.root.to_s << "/public/mykad-data/default.jpg").read
      end
      require "base64"
      @content = Base64.encode64(@content);
  end
end
