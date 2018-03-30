
--Registering componenents
local computer = require("computer")
local component = require("component")
local gpu = component.gpu
local term = require("term")

--internet part, thanks to payonel@irc
local internet
if component.isAvailable("internet")
then 
internet = require("internet")
end

--AESTHETICS
gpu.setForeground(0xC14892)
term.write("Systeminfo by AugiteSoul/augitesoul@twitter/augitesoul.fr/augitesoul@ocforums\n\n")

os.sleep(0.25)
--internet part, thanks to CptMercury@ocforums - disabled for now
local response = internet.request("http://augitesoul.fr/cgi-bin/fortune4.sh")
if response then
  for fort in response do
    term.write(fort)
    term.write("\n")
     if fort ~= nil then
      end
     end
  end

os.sleep(0.25)
term.write("Loading data...\n\n")

--actually obtaining and showing the data
os.sleep(0.25)
gpu.setForeground(0xFFFFFF)
term.write("Computer address:")
term.write(computer.address())
term.write("\n")
computer.beep(440)

os.sleep(0.25)
term.write("Current RAM used/free/total:")
local usedMem = (computer.totalMemory() - computer.freeMemory())
local usedK = (usedMem/1024)
term.write(usedK)
term.write("/")
term.write(computer.freeMemory()/1024)
term.write("/")
term.write(computer.totalMemory()/1024)
term.write("\n")
computer.beep(540)

os.sleep(0.25)
term.write("Energy available/maximum:")
term.write(computer.energy())
term.write("/")
term.write(computer.maxEnergy())
term.write("\n")
computer.beep(640)

os.sleep(0.25)
term.write("Uptime in seconds:")
term.write(computer.uptime())
term.write("\n")
computer.beep(740)

os.sleep(0.25)
term.write("Booting first from:")
term.write(computer.getBootAddress())
term.write("\n")
computer.beep(840)

os.sleep(0.25)
term.write("Can do HTTP requests? ")
if internet then
print("true") else
print("false")
end
term.write("\n")
computer.beep(940)

os.sleep(0.25)
term.write("Components available:\n")
component.list()
for address, componentType in component.list() 
do
os.sleep(0.125) 
print(address, " ", componentType)
computer.beep(340) 
end
