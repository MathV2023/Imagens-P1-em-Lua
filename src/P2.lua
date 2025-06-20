
P2 = {}
P2.__index = P2
-- PGM is an acronym of 'Portable Gray Map'

function P2:new(name --[[str]], comments --[[str]], width --[[number]], height --[[number]], maxValue --[[number]])
   
   if maxValue < 0 or maxValue > 65536 then
      print('The value in the variable "maxValue" is less than 0 or greater than 65536.')
      error('Invalid value in variable "maxValue" of function "P2:draw()".')
   end
   
   self = setmetatable({}, self)
   self.name = (name .. '.pgm')
   self.comments = comments
   self.maxValue = maxValue -- max is 65536
   self.width = width
   self.height = height

   return self
end

function P2:draw( mode --[[number: 0 or 1]], ...)
   local str --[[str]] = ''
   local w --[[number]] = self.width
   
   for i, value in ipairs(...) do
      if i <= (self.width*self.height) then
         if mode == 0 and type(value) == 'number' and (value >=
0 or value <= 65536) then
            str = (str .. tostring(value) .. ' ')

	    if i == self.height*self.width then
               str = str .. '\r'
            end
            
         elseif mode == 1 and type(value) == 'number' and (value >= 0 or value <= 65536) then
            str = (str .. tostring(value) .. ' ')
            
            if i == w and i ~= self.height*self.width then
               str = str .. '\r\n'
               w = w + self.width
            end
            
         else
            error('Some invalid value in the "P2:draw()".')
         end
      end
   end
   self.img --[[str]] = str
   return str
end

function P2:mount_image()
   local str --[[str]] = 'P2\n'..self.comments..'\n'..self.width..' '..self.height..'\n'..self.maxValue..'\n'..self.img
   return str
end

return P2

