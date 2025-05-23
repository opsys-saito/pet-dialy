module ApplicationHelper
  def breadcrumb(*items)
    tag.nav class: "text-truncate", style: "--bs-breadcrumb-divider: '>';", "aria-label": "breadcrumb" do
      tag.ol class: "breadcrumb flex-nowrap" do
        items.each.with_index(1) do |item, i|
          concat tag.li item, class: ["breadcrumb-item", "text-truncate active": i.eql?(items.size)], "aria-current": i.eql?(items.size) ? :page : nil
        end
      end
    end
  end
end
