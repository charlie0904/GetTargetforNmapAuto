# va-nmap
#!/usr/bin/env python3
import re
import os 
with open("targets.txt", "r") as f:
    string = f.read()
results = re.findall(r"\d+\.\d+\.\d+\.\d+", string)
print(results)
for i in range(len(results)):
    bashCommand = ("xterm -e 'bash ./nmapAutomator.sh -H {} --type Basic'")
    # >> results" + str(i) + ".txt'")
    bash=(bashCommand.format(results[i]))
    os.system(bash)
