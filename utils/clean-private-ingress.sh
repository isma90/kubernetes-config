#!/usr/bin/env bash

helm delete $(helm list -q) #Delete all, take it easy.
