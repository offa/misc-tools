# Add license header

Adds a license header to files with a given file extension.


## Usage

Add the license's content to a file (default `license_file`) and run the script.
This reads the license header from the file and adds it to all files matching with a given file extension.

```bash
./add_license_header.sh <extensions> [<license file>]
```

#### Parameter

- **extensions:** Comma separated list of file extensions (without the `.`)
- **license file:** Filename containg the license content (Optional, default: `license_file`)


## Example

```bash
# Adds header to all C++ files (*.h, *.cpp)
> ./add_license_header.sh cpp,h

# Adds the header (from gpl_header) to all Java files (*.java)
> ./add_license_header.sh java gpl_header
```

