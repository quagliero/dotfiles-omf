# PATH
set -gx NVM_DIR ~/.nvm

# Fish git prompt
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch -o white
set __fish_git_prompt_color_untrackedfiles -o yellow
set __fish_git_prompt_color_prefix -o blue
set __fish_git_prompt_color_suffix -o blue
set __fish_git_prompt_color_merging -o yellow
set __fish_git_prompt_color_cleanstate -o green
set __fish_git_prompt_color_dirtystate -o yellow
set __fish_git_prompt_color_invalidstate -o red
set __fish_git_prompt_color_upstream_ahead -o purple
set __fish_git_prompt_color_upstream_behind -o orange

# Status Chars
#set __fish_git_prompt_char_dirtystate '⚡'
#set __fish_git_prompt_char_stagedstate '→'
#set __fish_git_prompt_char_untrackedfiles '☡'
#set __fish_git_prompt_char_stashstate '↩'
#set __fish_git_prompt_char_upstream_ahead '+'
#set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status
  set_color -o red
  printf '➜ '
  set_color -o $fish_color_cwd
  printf '%s' (basename (prompt_pwd))
  set_color normal
  printf '%s ' (__fish_git_prompt)
  set_color normal
end

# nvm fish wrapper
# uses https://github.com/edc/bass
function nvm
  bass source ~/.nvm/nvm.sh ';' nvm $argv
end
