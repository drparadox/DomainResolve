# DomainResolve

The DomainListResolve.sh application has two parameters. The first is the filename contained in the domain list, and the second is the IP address of the optional DNS server. The domains.txt file should contain the domain names to be queried.The domains.txt filename is an example. You can create any name you want.

It queries the domain addresses in the domains.txt file and writes the result to the DomainResults.csv file with the resolved IP addresses. Also writes unresolved domains to NotUseDomainResults.csv file.

Example 1:
By default it queries for domain addresses in domains.txt file from 8.8.8.8 DNS server by default
./DomainListResolve.sh

Example 2:
Queries domain addresses in domains.txt file from 8.8.8.8 DNS server by default

./DomainListResolve.sh domainsList.txt


Example 3:
Queries domain addresses in domains.txt file from 4.4.4.4 DNS server

./DomainListResolve.sh domains.txt 4.4.4.4
