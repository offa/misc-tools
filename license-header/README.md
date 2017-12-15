# Add license header

Adds a license header to files with a given file extension.


## Usage

Add the license's content to `license_header` and run the script.
This reads the license header from the `license_header` file and adds it to all files matching with a given file extension.

```bash
./add_license_header.sh <Extensions>
```

#### Parameter

- **Extensions:** Comma separated list of file extensions (without the `.`)


## Example

```bash
# Adds header to all C++ files (*.h, *.cpp)
> ./add_license_header.sh cpp,h

# Adds the header to all Java files (*.java)
> ./add_license_header.sh java
```

