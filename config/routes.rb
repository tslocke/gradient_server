ActionController::Routing::Routes.draw do |map|
  map.static_page 'gradient_images/:spec.:format', :controller => 'gradient_images', :action => 'get'
end