class Builders::GithubStyleHeadings < SiteBuilder
  def build
    hook :resources, :post_render do |resource|
      next unless resource.output_ext == ".html"

      resource.output = resource.output.gsub(/<h([1-6]) id="([^"]+)">(.*?)<\/h\1>/m) do
        level, id, title = $1, $2, $3
        %(<h#{level} id="#{id}" class="title"><a name="#{id}" class="anchor" href="##{id}">#{title}</a></h#{level}>)
      end
    end
  end
end
