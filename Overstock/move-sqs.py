#!/usr/bin/env python

# borrowed from https://gist.github.com/Vidimensional/3394c11f2d73b7c29e6cf9509a1d50e0
# pip install --user boto cprint termcolor
# make sure the queue's Default Visibility Timeout is large enough or you end up reading the same message multiple times
# make sure to have your API keys available in the environment
# ./move-sqs.py --src adp-webdam-notifications-dlq-production --dst adp-webdam-notifications-production --region us-east-1

import json
import time
import argparse

import boto.sqs
from termcolor import cprint


parser = argparse.ArgumentParser(description="Migrate messages from SQS queues.")
parser.add_argument('-s', '--src', required=True,
                    help='Name of the source queue.')
parser.add_argument('-d', '--dst', required=True,
                    help='Name of the destination queue.')
parser.add_argument('--region', default='us-east-1',
                    help='The AWS region of the queues (default: \'us-east-1\').')
args = parser.parse_args()

aws_region = args.region
src_queue_name = args.src
dst_queue_name = args.dst

print ('Connecting to SQS...')
print ('source: ' + src_queue_name)
print ('destination: ' + dst_queue_name)

conn = boto.sqs.connect_to_region(aws_region)

print ('Connected to SQS...')

src_queue = conn.get_queue(src_queue_name)
dst_queue = conn.get_queue(dst_queue_name)

print (src_queue)
print (dst_queue)

while True:
    messages = src_queue.get_messages(10)
    for src_message in messages:
        dst_message = boto.sqs.message.RawMessage()
        print 'Processing message '+src_message.id
        msg_body = src_message.get_body()
        dst_message.set_body(msg_body)
        dst_queue.write(dst_message)
# comment out the delete to simply copy messages
        src_queue.delete_message(src_message)
    if len(messages) <= 0:
        break

