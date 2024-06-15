#!/bin/bash
ng build -c production|| exit 1
ssh vicky@pa5wpm.nl rm -rf /var/www/pa5wpm/*
scp -r dist/pa5wpm/browser/* vicky@pa5wpm.nl:/var/www/pa5wpm
