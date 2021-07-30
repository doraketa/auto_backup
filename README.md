# Auto Backup

A simple script for creating database backups.

## Usage

Just enter:

```bash
sh script_name.sh
```

## Advanced Usage
Place your script in /usr/bin/, then use the command:

```shell
$ sh script_name.sh backupall
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Automation

You can add your script to the cron task as follows:

```shell
$ crontab -e
```
Add the following line to the end of the file:
```shell
0 3 * * * /usr/bin/backup_sql.sh backupall
```
Thus, at 03:00 o'clock every day, month and year, this script will be executed.
