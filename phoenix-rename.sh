#!/bin/bash

set -e

CURRENT_NAME="stream_media"
CURRENT_OTP="stream_media"

NEW_NAME="stream_media"
NEW_OTP="stream_media"

ack -l $CURRENT_NAME | xargs sed -i '' -e "s/$CURRENT_NAME/$NEW_NAME/g"
ack -l $CURRENT_OTP | xargs sed -i '' -e "s/$CURRENT_OTP/$NEW_OTP/g"

mv lib/$CURRENT_OTP lib/$NEW_OTP
mv lib/$CURRENT_OTP.ex lib/$NEW_OTP.ex
