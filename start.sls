highstate_run:
  local.state.apply:
    - tgt: {{ data['id'] }}

touch:
  local.cmd.run:
    - tgt: 'os:Windows'
    - tgt_type: grain
    - args:
      - cmd: 'echo touch >> c:\runner.txt