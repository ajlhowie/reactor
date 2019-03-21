test_runner:
  runner.awscustom.send_sns:
    - tgt: {{ data['id'] }}
    - args:
      - sns_topic_arn: 'arn:aws:sns:ap-southeast-2:096841396245:ITOPSOnCall'
      - sns_message: "From SaltStack"