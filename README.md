# 
takeip.py - call nmapautomator to scan from a suggested ip list

Scanning hosts that has web application with nikto

nikto -host $curdate\_nmap_tcp.gnmap -ask no —nointeractive -useragent "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1" -Format htm —output .
nikto -host nmap_output.gnmap -ask no —nointeractive -Format htm -output nikto_nmap-scans.html
