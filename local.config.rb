# I know if works but it's an overkill
# It's absolutely fine to create constants in the module instead
$account_sid = ENV['account_sid'] 
$auth_token = ENV['auth_token']
# You don't really want the test mode. The tests should stub the calls instead
$test_mode = false
