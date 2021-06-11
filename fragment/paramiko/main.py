import paramiko

client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect('localhost', username='guyaqi')

inject_command = 'read t && echo "$t" > inject.txt'
shell_file_path='./something.sh'
with open(shell_file_path, 'r') as f: shell_file_content = f.read()

content=shell_file_content.replace('\n', '\\x0a').replace('\\', '\\\\') + '\n'
print(content)

stdin, stdout, stderr = client.exec_command(inject_command)
stdin.write(content)
out_text = stdout.read().decode()
err_text = stderr.read().decode()
print(out_text)
print(err_text)