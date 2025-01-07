function ls --wraps='eza -l ' --wraps='eza -l --icons=always ' --description 'alias ls=eza -l --icons=always '
  eza -l --icons=always  $argv
        
end
