login_detected_log:
  local.cmd.run:
    - tgt: {{ data['id'] }}
    - args:
      - cmd: 'echo "login detected" >> c:\runner.txt'

login_detected_sns:
  runner.awscustom.send_sns:
    - tgt: {{ data['id'] }}
    - args:
      - sns_topic_arn: 'arn:aws:sns:ap-southeast-2:096841396245:ITOPSOnCall'
      - sns_message: "Login detected"