module ManageWikiViewPagePermission
  def self.apply_patch
    WikiController.send(:include, ManageWikiViewPagePermission::WikiControllerPatch)
  end
end
