#!/bin/bash
ports="80 443"
curdate=$(date +%Y%m%d)
nmap —n -Pn -iL targets.txt -oA $curdate\_nmap_tcp —-reason
for testport in $ports
do for targetip in $(awk '/'$testport'\/open/{print $2}' $curdate\_nmap_tcp.gnmap)
do nikto -host $targetip:$testport -ask no —nointeractive -useragent "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1" -Format htm -output
$curdate\_nikto_$targetip\_$testport.html
done
done

# below is command to execute with nikto based on a given nmap result
# nikto -host $curdate\_nmap_tcp.gnmap -ask no —nointeractive -useragent "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1" -Format htm -output nikto-result.csv
# nikto -host nmap.gnmap -ask no —nointeractive -Format htm -output nikto_nmap-scans.html
