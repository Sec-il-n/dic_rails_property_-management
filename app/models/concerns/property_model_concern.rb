require 'active_support/concern'

module PropertyModelConcern
  extend ActiveSupport::Concern

  def reject_both_blank(attributes)
    exists = attributes[:id].present?
    empty = attributes[:line].blank? and attributes[:station_name].blank? and attributes[:minute].blank?
    attributes.merge!(_destroy:'1') if exists && empty
    !exists && empty
  end
end
