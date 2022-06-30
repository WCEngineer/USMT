# USMT

## Instructions to Migrate Local User to Domain User

### Prerequisites

- The computer must already be joined to the domain before you start this process

### Instructions

1. Login as an administrator account (should be a different user than the account you intend to migrate)
2. Create a folder "C:\USMT" on the computer
3. Copy the "GenConfig.ps1" file into the "C:\USMT" directory
4. Run the `ScanState_*.bat` script to backup the local user profile.
5. Remove/Delete the local account of the user you intend to migrate.
6. Run the `LoadState_*.bat` script to migrate the backup of the local user to the domain user profile.
7. Reboot the computer
8. Login to the account that was just migrated.
