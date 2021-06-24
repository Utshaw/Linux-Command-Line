# Environment

## printenv

- prints all environment variable

## PATH

- The OS searches for program in PATH variable

```
echo $PATH # prints PATH
export DB_USER=farhan # only store this variable in current terminal session
```

## add env variable in .bashrc

- .bashrc loads when a terminal session begins
- `source ~/.bashrc` will reload the bashrc file

```
export DB_USER=farhan >> ~/.bashrc
```
