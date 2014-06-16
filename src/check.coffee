(colorize = require './colors')(String)

String::pad = (n) ->
  ws = [1..n].map(-> ' ').reduce (a,c) -> a+=c
  "#{@}#{ws}"[0..n]

console.log "Printing all available styles by name...\n"
for own style,_ of colorize.styles
  console.log "  #{style.pad 14}  #{style[style]}"

console.log "\nDone!"

