#Run a calculation in the background using coroutines
#
#If you have a calculation that runs for a long period of time, locking the WoW client while it runs, you can use coroutines. The following code shows an example of this technique.
#
#Snippet

-- Have a function that does some work. Arrange it so this function
-- does work in small (fast) chunks. In this example, the function
-- will do 10 calculations per chunk. Add a coroutine.yield() wherever
-- you want the breaks
 
local function someCalculation()
   local output = ""
   for i = 1, 50 do
      output = output .. "."
      if i % 10 == 0 then
         print(output .. i)
         output = ""
         coroutine.yield()
      end
   end
end
 
-- Create a coroutine to run that function
local thread = coroutine.create(someCalculation)
 
-- Create a frame that will periodically (OnUpdate) resume the 
-- coroutine.
local frame = CreateFrame("Frame")
local counter = 0
local throttle = 0.5
frame:SetScript("OnUpdate", function(self, elapsed)
      counter = counter + elapsed
      if counter >= throttle then
         counter = counter - throttle
         if coroutine.status(thread) ~= "dead" then
            coroutine.resume(thread)
         end
      end
end)
