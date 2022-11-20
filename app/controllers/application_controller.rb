class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if admin_signed_in?
      admin_items_path
    elsif public_signed_in?
      public_items_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :public
        new_public_session_path
    elsif resource_or_scope == :admin
        new_admin_session_path
    else
        root_path
    end
  end
end
