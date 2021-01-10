$PesterPreference = [PesterConfiguration]::Default
$PesterPreference.Filter.Tag = @('Functional')

Context -Name 'Ping times' -Fixture {
    It 'Default gateway should respond in less than 10ms' {
        (Test-Connection -TimeoutSeconds 1 -ComputerName 10.0.0.1 -Count 1).Latency | Should -BeLessThan 50
    }
} -Tag Ping

Context -Name 'Functional tests' -Tag Functional -Fixture {
    It 'Should respond to DNS resolution' {
        { Resolve-DnsName -Name google.com -ErrorAction Stop } | Should -Not -Throw
    }
}