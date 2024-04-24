%dw 2.0
output application/json
---
(vars.userProperties as Object default {}) - 'retryTime' ++
{
	retryTime: now()
	+("PT" ++ vars.userProperties.retryDelayinSeconds as String++ "S")
}