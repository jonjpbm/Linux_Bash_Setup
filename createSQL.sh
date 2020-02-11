#!/bin/bash

tr '\n' ' ' | sed "s/ /','/g" | sed "s/^/ ('/g" | sed "s/$/') /g"
