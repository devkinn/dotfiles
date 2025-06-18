function zola --wraps='flatpak run org.getzola.zola' --description 'alias zola=flatpak run org.getzola.zola'
  flatpak run org.getzola.zola $argv
        
end
