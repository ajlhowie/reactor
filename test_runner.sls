test_runner:
  runner.awscustom.send_sns:
    - tgt: {{ data['id'] }}
    - args:
      - sns_topic_arn: 'arn:aws:sns:ap-southeast-2:096841396245:ITOPSOnCall'
      - sns_subject: "Login detected"
      - sns_message: "Login detected"
      - sns_source: {{ data['id'] }}