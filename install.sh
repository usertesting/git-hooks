#!/bin/bash

if [[ "${1}" == "" ]]
then
  echo "Missing project path as second parameter:"
  echo "${0} ../file/path/with/.git/dir"
  exit 1
fi

if [[ ! -d "${1}/.git" ]]
then
  echo "Project path does not include .git directory:"
  echo "${0} ${1}"
  exit 1
fi

echo "Installing hooks to project: ${1}"

cp -prfv ./hooks/* ${1}/.git/hooks/

echo 
echo "Done"

