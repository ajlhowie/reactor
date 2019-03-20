login_detected:
  local.cmd.run:
    - tgt: {{ data['id'] }}
    - args:
      - cmd: 'echo "login detected" >> c:\runner.txt'