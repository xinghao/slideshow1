module StaticHelper
  def random_background_images
    images=["background-1b.jpg","background-2b.jpg","background-3b.jpg","background-4b.jpg","background-5b.jpg","background-6b.jpg"]
    index = rand(0..(images.size - 1))
    return images[index]  
  end
  
end
