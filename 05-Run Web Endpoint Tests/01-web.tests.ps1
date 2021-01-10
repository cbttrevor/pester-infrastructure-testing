$PesterPreference = [PesterConfiguration]::Default
$PesterPreference.Output.Verbosity = 'Detailed'

Describe -Name 'Web Tests (trevorsullivan.net)' -Fixture {
    It -Name 'Should respond with HTTP 200' -Test {
        $Result = Invoke-WebRequest -Uri https://trevorsullivan.net/
        $Result.StatusCode | Should -Be 200
    }
    It -Name 'Should respond in less than 500ms' -Test {
        $Speed = Measure-Command -Expression {
            Invoke-WebRequest -Uri https://trevorsullivan.net
        }
        $Speed.TotalMilliseconds | Should -BeLessThan 500
    }
}