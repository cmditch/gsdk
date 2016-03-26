module Gsdk
  class Engine < ::Rails::Engine
    initializer 'material_kit.setup' do |app|
      app.config.assets.precompile += Dir.glob(config.root + 'app/assets/images/gsdk/**/*').select{ |f| File.file? f }.map { |m| "gsdk/" +  File.path(m).split("gsdk/").last }
    end
  end
end
