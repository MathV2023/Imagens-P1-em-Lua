
local io = require('io')

local P1 = require("P1")

i = P1:new( "imageP1", "# jj\n# Oi?", 5, 5)
i:draw(1, {
   1, 1, 1, 1, 0,
   1, 0, 1, 0, 1,
   1, 1, 0, 1, 1,
   1, 1, 1, 1, 1,
   1, 1, 1, 1, 1
})
print(i:mount_image())

arquivo_pbm = io.open(i.name, 'w')

arquivo_pbm:write(i:mount_image())
arquivo_pbm:close()

