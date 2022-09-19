param($net,$server)
for($i=10; $i -lt 50; $i++){
$ip = $net+"."+$i
Write-Output(Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore)
}