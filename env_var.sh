#!/bin/bash

# Check if USER_ACTION is set
USER_ACTION=add USERNAME=chandu ./env1.sh
if [ -z "$USER_ACTION" ]; then
  echo "ERROR: USER_ACTION is not set! Use 'add', 'delete', or 'info'."
  exit 1
fi

# Check if USERNAME is set for 'add' and 'delete' actions
if [[ "$USER_ACTION" != "info" ]] && [ -z "$USERNAME" ]; then
  echo "ERROR: USERNAME is not set! Specify a username for 'add' or 'delete' actions."
  exit 1
fi

echo "User Account Manager Script"
echo "Action: $USER_ACTION"

# Perform the action
case "$USER_ACTION" in
  add)
    echo "Adding user: $USERNAME"
    if id "$USERNAME" &>/dev/null; then
      echo "ERROR: User '$USERNAME' already exists."
    else
      sudo useradd -m "$USERNAME"
      echo "User '$USERNAME' added successfully!"
    fi
    ;;
  delete)
    echo "Deleting user: $USERNAME"
    if id "$USERNAME" &>/dev/null; then
      sudo userdel -r "$USERNAME"
      echo "User '$USERNAME' deleted successfully!"
    else
      echo "ERROR: User '$USERNAME' does not exist."
    fi
    ;;
  info)
    echo "Fetching system user information..."
    echo "-----------------------------------"
    echo "Logged-in Users:"
    who
    echo ""
    echo "All System Users:"
    cut -d: -f1 /etc/passwd
    ;;
  *)
    echo "ERROR: Invalid USER_ACTION. Use 'add', 'delete', or 'info'."
    exit 1
    ;;
esac

echo "Action '$USER_ACTION' completed successfully!"
