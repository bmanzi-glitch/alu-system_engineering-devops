# Configures SSH client to use school key and disable password auth
include stdlib

file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^.*PasswordAuthentication.*$',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^.*IdentityFile.*$',
}
```

**Step 3 — Save and exit**
```
ESC → :wq → Enter
