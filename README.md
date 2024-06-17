## Create A -Z Folders
# Make the script executable:
```bash
chmod +x create_folders.sh
```
# Run the script:
```bash
./create_folders.sh
```

## Create Nested Folders
Make the script executable:
```bash
chmod +x create_nested_folders.sh
```
## Run the script with the desired parameter, example is "ThienLam":
```bash
./create_nested_folders.sh ThienLam
```

This script defines a function create_folders that creates A-Z folders in a given directory. It then iterates through each character of the input string, creating the necessary nested folders as specified. After running the script with ThienLam as the parameter, you will have the following folder structure:

```css
.
├── A
│   └── (A-Z)
├── B
│   └── (A-Z)
...
├── T
│   ├── A
│   └── (A-Z)
│       ├── A
│       └── (A-Z)
│           ├── A
│           └── (A-Z)
│               ├── A
│               └── (A-Z)
│                   └── M
│                       └── (A-Z)
├── H
│   ├── A
│   └── (A-Z)
│       ├── A
│       └── (A-Z)
│           ├── A
│           └── (A-Z)
│               └── E
│                   └── (A-Z)
│                       └── N
│                           └── (A-Z)
...
```
Repeat for each character in the input string.