module ConcertoScreencontent
  class Engine < ::Rails::Engine
    isolate_namespace ConcertoScreencontent
    engine_name 'concerto_screencontent'

    # Define plugin information for the Concerto application to read.
    # Do not modify @plugin_info outside of this static configuration block.
    def plugin_info(plugin_info_class)
      @plugin_info ||= plugin_info_class.new do
        # add_controller_hook 'ScreensController', :show, :before do
        #   @post = MyPlugin::Post.find_by_screen_id(@screen.id)
        # end

        add_view_hook 'ScreensController', :screen_details2, partial: 'concerto_screencontent/screens/content'
      end # plugin_info intializer
    end # plugin_info
  end
end
