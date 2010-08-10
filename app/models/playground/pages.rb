module Playground
  class Pages
    class PFile
      attr_reader :playground, :file

      def initialize(playground,file)
        @playground = playground
        @file = file.expand_path
        @relative_path = file.relative_path_from(playground.root)
      end

      def url
        "/playground/#{@relative_path}"
      end
      def txmt
        "txmt://open/?url=file://#{file}"
      end
      def name
        @relative_path
      end
      def layout
        unless @layout
          @layout = @relative_path.split[0].to_s
          if @layout == '.'
            @layout = 'application'
          end
        end
        @layout
      end

      def template
        @file.to_s
      end
    end

    def root
      @root ||= Rails.root+'app/views/playground'
    end

    def app_name
      @app_name ||= Rails.root.basename.to_s
    end

    def layouts
      files.map {|f| f.layout}.uniq
    end

    def files_with_layout(layout)
      files.select {|f| f.layout == layout}
    end

    def files
      @files ||= Pathname.glob(root+'**/*.haml').reject {|f| f.basename.to_s == 'playground_listing.haml'}.map {|f| PFile.new(self,f)}.sort_by {|p| p.to_s}
    end

    def file_at(path)
      PFile.new(self, root+path)
    end

    def txmt
      "txmt://open/?url=file://#{root}"
    end
  end
end
