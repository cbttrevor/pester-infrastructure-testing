Describe -Name "Home Lab" {
    Context -Name 'Ping tests' -Fixture {
        It -Name 'Should ping default gateway' -Test {
            [int](Test-Connection -Ping -ComputerName 10.0.0.1 -Count 1).Latency | Should -BeLessThan 3
        }
        It -Name '10.0.0.77 should not be alive' -Test {
            [string](Test-Connection -Ping -ComputerName 10.0.0.77 -Count 1 -TimeoutSeconds 1).Status | Should -Be 'TimedOut'
        }
    }
}