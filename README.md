# lnetPBM (lua e netPBM)
## Imagens netPBM em lua

## Funções paraP1
```lua

-- Formato P1
P1:new(--[[name, comments, width, height]])
P1:draw(--[[mode, {list}]])
P1:mount_image() -- Irá montar tudo já feito em uma única 'string'.

```

### Exemplo

```lua

-- imageP1.pbm
imagemP1 = P1:new( 'imageP1', '# √', 9, 9)
imagemP1:draw(2, {
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
print(imagemP1:mount_image())

arquivo_pbm = io.open(imagemP1.name, 'w')

arquivo_pbm:write(imagemP1:mount_image())
arquivo_pbm:close()

```

## Funções
```lua

-- Formato P2
P2:new(--[[name, comments, width, height, maxValue]]) -- 'maxValue' é o valor máximo de tons de cinza entre o 'preto' e o 'branco'.
P2:draw(--[[mode, {list}]])
P2:mount_image() -- Irá montar tudo já feito em uma única 'string'.

```

### Exemplo

```lua

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

arquivo_pgm = io.open(imageP2.name, 'w')

arquivo_pgm:write(imageP2:mount_image())
arquivo_pgm:close()

```


