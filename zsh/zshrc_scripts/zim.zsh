#
# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

zprompt_theme='eriner'

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
