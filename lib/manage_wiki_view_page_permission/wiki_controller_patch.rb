module ManageWikiViewPagePermission
  module WikiControllerPatch
    def self.included(base)
      base.class_eval do
        before_filter :validate_permission_for_protected_pages, :only=>:show
        private

        def validate_permission_for_protected_pages
          deny_access and return if @page.protected? and !User.current.allowed_to?(:view_protected_pages, @project)
        end
      end
    end
  end
end
