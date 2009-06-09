require 'rubygems'
require 'RMagick'

class GradientImagesController < ActionController::Base
  
  include Magick
  
  caches_page :get
  
  def get
    images = ImageList.new

    parts = params[:spec].split('::')
    parts.each do |part|  
      size, top, bottom = part.split(':')
      bottom ||= top
      gradient = GradientFill.new(0,0,1,0, "##{top}", "##{bottom}")
      images << Image.new(1, size.to_i, gradient)
    end

    img = images.append(true)

    img.format = params[:format]
    render :text => img.to_blob, :content_type => "image/#{params[:format]}"
  end
  
end