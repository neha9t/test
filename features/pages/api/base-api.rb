module Pages
  module API
      class BaseAPI
        @platform = ""
        @version = ""

          def set_platform (platform)
            @platform = platform
          end

          def set_version (version)
            @version = version
          end

      end
  end
end
