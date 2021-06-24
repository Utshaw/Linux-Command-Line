# Add user

```
useradd -m john # older way to create user
cat /etc/passwd # look for john
cat /etc/shadow # passwords are stored here in encrypted format
```

- interactive way to adduser

```
adduser bob
```

## Deleting user

- `userdel bob`

## Add group

- primary group of a user is automatically created when the user is created
  with the same name as the username

```
groupadd developers
cat /etc/group # see groups
usermod -G developers john # add john to developers
groups john # show all groups john is part of
```
