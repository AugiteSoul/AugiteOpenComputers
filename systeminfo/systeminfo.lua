
--Registering componenents
local computer = require("computer")
local component = require("component")
local gpu = component.gpu
local term = require("term")

--internet stuff, thanks to payonel@irc
local internet
if component.isAvailable("internet")
then 
internet = require("internet")
end

--AESTHETICS
gpu.setForeground(0xC14892)
term.write("Systeminfo by AugiteSoul/augitesoul@twitter/augitesoul.fr/augitesoul@ocforums\n\n")

os.sleep(0.25)
--internet part, thanks to CptMercury@ocforums
if component.isAvailable("internet") then
local response = internet.request("http://augitesoul.fr/cgi-bin/fortune4.sh")
if response then
  for fort in response do
    term.write(fort)
    term.write("\n")
     if fort ~= nil then
      end
     end
  end
else end

os.sleep(0.25)
term.write("Loading data...\n\n")

--actually obtaining and showing the data
gpu.setForeground(0xFFFFFF)

os.sleep(0.25)
term.write("Computer address: "..computer.address().."\n")
computer.beep(440)

os.sleep(0.25)
local usedMem = (computer.totalMemory() - computer.freeMemory())
local usedK = (usedMem/1024)
term.write("Current RAM used/free/total: "..usedK .."/"..computer.freeMemory()/1024 .."/"..computer.totalMemory()/1024 .."\n")
computer.beep(540)

os.sleep(0.25)
term.write("Energy available/maximum: "..computer.energy().."/"..computer.maxEnergy().."\n")
computer.beep(640)

os.sleep(0.25)
term.write("Uptime in seconds: "..computer.uptime().."\n")
computer.beep(740)

os.sleep(0.25)
term.write("Booting first from: "..computer.getBootAddress().."\n")
computer.beep(840)

os.sleep(0.25)
term.write("Can do HTTP requests? ")
if component.isAvailable("internet") then
term.write("true")
else
term.write("false")
end
term.write("\n")
computer.beep(940)

os.sleep(0.25)
term.write("Components available:\n")
component.list()
for address, componentType in component.list() 
do
os.sleep(0.125) 
print(address, componentType)
computer.beep(340) 
end
