#!/usr/bin/env coffee
# Very small package to allow colorization of a particular class.
# Most natural usage is via colorize(String) to allow for semantic
# coloring, such as...
#   
#   console.log 'print this in red'.red
#
# Working exactly as expected.

(styles = {
  # Styles
  bold: [1, 22],        italic: [3, 23]
  underline: [4, 24],   inverse: [7, 27]

  # Grayscale
  white: ['01;38;5;271', 0],    gray: ['01;38;5;251', 0]
  black: ['01;38;5;232', 0]

  # Colors
  blue: ['00;38;5;14', 0],      purple: ['00;38;5;98', 0]
  green: ['01;38;5;118', 0],    orange: ['00;38;5;208', 0]
  red: ['01;38;5;196', 0],      pink: ['01;38;5;198', 0]

})

colorize = (_String) ->

  # Configures for colors and styles
  stylize = (str, style) ->
    [p,s] = styles[style]
    `'\033'`+"[#{p}m#{str}"+`'\033'`+"[#{s}m"

  # Hack String to hook into our styles
  (Object.keys styles).map (style) ->
    _String::__defineGetter__(style, -> stylize @, style)# }}}

colorize.styles = styles
module.exports = colorize
