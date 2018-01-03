# Update license header

Updates a license header of all files with a given file extension.


## Usage

Run the script with the old and new header lines. This updates all files accordingly.

```bash
./update_license_header.sh <extensions> <old-string> <new-string>
```


#### Parameter

- **extensions:** Comma separated list of file extensions (without the `.`)
- **old-string:** Old line to update (Regex)
- **new-string:** New line (Regex)


## Example

```bash
# Updates the header of all C++ files (*.h, *.cpp)
> ./update_license_header.sh cpp,h "Copyright \(C\) 2017 offa" "Copyright (C) 2017-2018 offa"

# Update only the second year on all Java files (*.java)
./update_license_header.sh java "Copyright \(C\) ([0-9]*)-2017  offa" "Copyright \(C\) \1-2018  offa"
```
