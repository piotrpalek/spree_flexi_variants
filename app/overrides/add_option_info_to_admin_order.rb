Deface::Override.new(:virtual_path => "spree/admin/orders/_line_items",
                     :name => "add_option_info_colgroup_to_admin_order",
                     :insert_bottom => "[data-hook='line-items'] colgroup",
                     :text => "<col style='width: 20%;' />")

Deface::Override.new(:virtual_path => "spree/admin/orders/_line_items",
                     :name => "add_option_info_header_to_admin_order",
                     :insert_before => "[data-hook='admin_order_form_line_items_header_actions']",
                     :text => "<th><%= Spree.t(:options) %></th>")

Deface::Override.new(:virtual_path => "spree/admin/orders/_line_items",
                     :name => "add_option_info_to_admin_order",
                     :insert_before => "[data-hook='cart_line_item_delete']",
                     :text => "<td class='option_info_to_admin_order'><%= render partial: 'spree/shared/additional_line_item_fields', locals: {item: item} %></td>")
