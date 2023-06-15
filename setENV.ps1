[System.Environment]::SetEnvironmentVariable('FILEBEAT_API',"$APIkey",[System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable('FILEBEAT_IP',"$IPAddress",[System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable('FILEBEAT_PORT',"$PORT",[System.EnvironmentVariableTarget]::Machine)
