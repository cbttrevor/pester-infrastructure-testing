$PesterPreference = [PesterConfiguration]::Default
$PesterPreference.Output.Verbosity = 'Detailed'

Describe -Name 'Home Lab' -Fixture {
    BeforeAll {
        Write-Host -Object 'Connecting to test Wifi network'
        Connect-WiFiProfile -Name Bacon
        Start-Sleep -Seconds 3
    }

    Context -Name 'Ping tests' -Fixture {
        It -Name 'Should be able to ping 1.1.1.1' {
            (Test-Connection -Count 1 -Ping -TargetName 1.1.1.1).Status | Should -Be 'Success'
        }
        It -Name 'Should be able to ping 8.8.8.8' {
            (Test-Connection -Count 1 -Ping -TargetName 8.8.8.8).Status | Should -Be 'Success'
        }
        It -Name 'Should be able to ping 8.8.4.4' {
            (Test-Connection -Count 1 -Ping -TargetName 8.8.4.4).Status | Should -Be 'Success'
        }
    }

    Context -Name 'DNS Monitoring' -Fixture {
        It -Name 'Should be able to resolve google.com' {
            { Resolve-DnsName -Name google.com -ErrorAction Stop } | Should -Not -Throw
        }
        It -Name 'Should be able to resolve google.com' {
            { Resolve-DnsName -Name googleasdfasdf.com -ErrorAction Stop } | Should -Not -Throw
        }
    }

    Context -Name 'Website Monitoring' -Fixture {
        It -Name 'trevorsullivan.net should respond with HTTP 200' {
            $WebRequest = Invoke-WebRequest -Uri https://trevorsullivan.net
            $WebRequest.StatusCode | Should -Be 200
        }
    }

    AfterAll {
        Write-Host -Object 'Tests completed. Re-connecting to production network'
        Connect-WiFiProfile -Name Andromeda
    }
}
