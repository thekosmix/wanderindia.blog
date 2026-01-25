Jekyll::Hooks.register [:posts, :pages], :post_render do |doc|
  doc.output.gsub!(/<img (?!.*loading=)/i, '<img loading="lazy" ')
end
