# Mini Project 1: Centralized Log Directory for Multiple Users

## Objective

Configure a centralized log directory where multiple users can store logs.

## -- TASKS --

1. Create a directory called /central_logs.
2. Give write access to multiple users.
3. Configure permissions so users cannot delete each other's files.
4. Create two test users.
5. Verify file creation and deletion permissions.

## Commands

### Create Users

```bash
sudo useradd user1
sudo useradd user2
sudo passwd user1
sudo passwd user2
```

### Create central_Logs Directory

```bash
sudo mkdir /central_logs
```

### Create Group

```bash
sudo groupadd logteam
```

### Add Users to Group

```bash
sudo usermod -aG logteam user1
sudo usermod -aG logteam user2
```

### Change Group Ownership

```bash
sudo chgrp logteam /central_logs
```

### Set Permissions

```bash
sudo chmod 1777 /central_logs
```

### Verify

Login as user1:

```bash
su - user1
touch /central_logs/user1.log
```

Login as user2:

```bash
su - user2
touch /central_logs/user2.log
```

Try deleting:

```bash
rm /central_logs/user1.log
```

Expected Result:

- User1 can create files.
- User2 can create files.
- User2 cannot delete User1's files.
