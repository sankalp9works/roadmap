#!/usr/bin/env python3
from collections import Counter 

LOG_FILE = "nginx-access.log"

ip_counter = Counter()
path_counter = Counter()
status_counter = Counter()
agent_counter = Counter()

with open(LOG_FILE) as f:
	for line in f:
		parts = line.split()

	# protectt form malformed lines
		if len(parts) < 9:
	 		continue
	
		ip = parts[0]   # ip address
		path = parts[6] # requested path
		status = parts[8] # HTTP status code
		agent =	 " ".join(parts[11:]) # user agent
	
		ip_counter[ip] += 1
		path_counter[path] += 1
		status_counter[status] += 1
		agent_counter[agent] += 1


def show(title, counter):
	print(f"\n{title}:")
	for item, count in counter.most_common(5):
		print(f"{item} - {count} requests")


# print all 

show("Top  5 ip addresses", ip_counter)
show("Top  5 requested paths", path_counter)
show("Top  5 status code", status_counter)
show("Top  5 user agent", agent_counter)
