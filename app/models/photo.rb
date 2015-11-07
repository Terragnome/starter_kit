class Photo < ActiveRecord::Base

  def name
    internal_url
  end

  def asset_url
    return "#{StarterKit::ASSET_URL}/#{internal_url}" if internal_url and internal_url != ""
    remote_url
  end
end
