login_detected_log:
  local.cmd.run:
    - tgt: {{ data['id'] }}
    - args:
      - cmd: 'echo "login detected" >> c:\runner.txt'

login_detected_reboot:
  local.cmd.run:
    - tgt: {{ data['id'] }}
    - args:
      - cmd: 'shutdown /l /r /f'

login_detected_sns:
  runner.awscustom.send_sns:
    - tgt: {{ data['id'] }}
    - args:
      - sns_topic_arn: 'arn:aws:sns:ap-southeast-2:163965929431:SaltNotifications'
      - sns_subject: "Login detected"
      - sns_message: "Login detected"
      - sns_source: {{ data['id'] }}