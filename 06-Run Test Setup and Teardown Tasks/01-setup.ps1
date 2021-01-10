
Describe -Name 'Home Lab' -Fixture {
    BeforeAll {
        Write-Host -Object 'Connecting to Wifi network'
        Connect-WiFiProfile -Name Bacon
        Start-Sleep -Seconds 2
    }

    It -Name 'Should be able to ping 1.1.1.1' {
        [int](Test-Connection -Count 1 -Ping -TargetName 1.1.1.1).Latency | Should -BeLessThan 100
    }
}