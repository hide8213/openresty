--[[
Auxiliary function to split a string based on a delimiter
   ]]--

function string:split(delimiter)
   local result = { }
   local from = 1
   local delim_from, delim_to = string.find( self, delimiter, from )
   while delim_from do
      table.insert( result, string.sub( self, from , delim_from-1 ) )
      from = delim_to + 1
      delim_from, delim_to = string.find( self, delimiter, from )
   end
   table.insert( result, string.sub( self, from ) )
   return result
end

function sayHello()
   ngx.say("hello")
end


function yoyo()
   ngx.say("xml")
   ngx.exit(ngx.HTTP_OK)
end