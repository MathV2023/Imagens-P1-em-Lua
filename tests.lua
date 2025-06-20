local P1 = require('./src/P1')
local P2 = require('./src/P2')

-- imageP1.pbm
imageP1 = P1:new( 'imageP1', '# √', 9, 9)
imageP1:draw(2, {
   1, 1, 1, 1, 1, 1, 1, 0, 0,
   1, 1, 1, 1, 1, 1, 1, 0, 0,
   1, 0, 0, 1, 1, 0, 0, 1, 1,

   1, 0, 0, 1, 1, 0, 0, 1, 1,
   1, 1, 1, 0, 0, 1, 1, 1, 1,
   1, 1, 1, 0, 0, 1, 1, 1, 1,

   1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1
})
print(imageP1:mount_image())

arquivo_pbm = io.open(imageP1.name, 'w')

arquivo_pbm:write(imageP1:mount_image())
arquivo_pbm:close()


print('\n=== === === === === ===\n')

-- imageP2.pgm
imageP2 = P2:new( 'imageP2', '# ≡', 9, 9, 16)
imageP2:draw(0, {
   0, 1, 2, 3, 4, 5, 6, 7, 8,
   1, 2, 3, 4, 5, 6, 7, 8, 9,
   2, 3, 4, 5, 6, 7, 8, 9, 10,

   3, 4, 5, 6, 7, 8, 9, 10, 11,
   4, 5, 6, 7, 8, 9, 10, 11, 12,
   5, 6, 7, 8, 9, 10, 11, 12, 13,

   6, 7, 8, 9, 10, 11, 12, 13, 14,
   7, 8, 9, 10, 11, 12, 13, 14, 15,
   8, 9, 10, 11, 12, 13, 14, 15, 16
})
print(imageP2:mount_image())

arquivo_pbm = io.open(imageP2.name, 'w')

arquivo_pbm:write(imageP2:mount_image())
arquivo_pbm:close()
