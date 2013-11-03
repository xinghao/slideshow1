module ApplicationHelper
  def random_background_images
    images=["background-1d.jpg","background-2d.jpg","background-3d.jpg","background-4d.jpg","background-5d.jpg"]
    index = rand(0..(images.size - 1))
    return images[index]  
  end
    
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end  
end
