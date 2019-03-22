touch:
  local.cmd.run:
    - tgt: 'os:Windows'
    - tgt_type: grain
    - args:
      - cmd: 'echo "minion started" >> c:\runner.txt'