Rails.configuration.to_prepare do 
  ManageWikiViewPagePermission.apply_patch
end

Redmine::Plugin.register :manage_wiki_view_page_permission do
  name 'Manage Page Permission Plugin'
  author 'Systango'
  description 'This is a plugin for managing page permissions'
  version '0.0.1'
	requires_redmine :version_or_higher => '2.2.4'

  project_module :wiki do
    permission :view_protected_pages, :wiki => :show
  end
end
