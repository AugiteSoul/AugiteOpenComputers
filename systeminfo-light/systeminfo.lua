--components
local computer = require("computer")
local component = require("component")

--internet part, thanks to payonel@irc
local internet
if component.isAvailable("internet")
then 
internet = require("internet")
end

print("Systeminfo Light Version by AugiteSoul@ocforums")

--getting data
print("Computer address: "..computer.address())
local usedMem = (computer.totalMemory() - computer.freeMemory())
local usedK = (usedMem/1024)
print("Current RAM used/free/total: "..usedK .."/"..computer.freeMemory()/1024 .."/"..computer.totalMemory()/1024)
print("Energy available/maximum: "..computer.energy().."/"..computer.maxEnergy())
print("Uptime in seconds: "..computer.uptime())
print("Booting first from: "..computer.getBootAddress())
print("Can do HTTP requests? ")
if component.isAvailable("internet") then
print("true")
else
print("false")
end
print("Components available:\n")
component.list()
for address, componentType in component.list() 
do
print(address, componentType)
end
