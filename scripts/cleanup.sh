#!/bin/bash

echo "Cleaning old deployment directory..."

rm -rf /home/ec2-user/curldata-website
mkdir -p /home/ec2-user/curldata-website

echo "Cleanup complete."
