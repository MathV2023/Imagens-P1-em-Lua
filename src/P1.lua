
P1 = {}
P1.__index = P1

function P1:new(name --[[str]], comments --[[str]], width --[[number]], height --[[number]])
   self = setmetatable({}, self)
   self.name = (name .. '.pbm')
   self.comments = comments
   self.width = width
   self.height = height

   return self
end

function P1:draw( mode --[[number: 0 or 1]], ...)
   local str --[[str]] = ''
   local w --[[int]] = self.width
   
   for i, value in ipairs(...) do
      if i <= (self.width*self.height) then
         if mode == 0 and type(value) == 'number' and (value == 0 or value == 1) then
            str = (str .. tostring(value))
            
         elseif mode == 1 and type(value) == 'number' and (value == 0 or value == 1) then
            str = (str .. tostring(value) .. ' ')

	    if i == self.height*self.width then
               str = str .. '\r'
            end
            
         elseif mode == 2 and type(value) == 'number' and (value == 0 or value == 1) then
            str = (str .. tostring(value) .. ' ')
            
            if i == w and i ~= self.height*self.width then
               str = str .. '\r\n'
               w = w + self.width
            end
            
         else
            error('Some invalid value in the "P1:draw()".')
         end
      end
   end
   self.img --[[str]] = str
   return str
end

function P1:mount_image()
   local str --[[str]] = 'P1\n'..self.comments..'\n'..self.width..' '..self.height..'\n'..self.img
   return str
end

return P1

