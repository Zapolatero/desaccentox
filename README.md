# Desaccentox

## Description :

Tiny PS core script to get rid of given accents in a text.

## Usage :

**For one file :**

```powershell
.\desaccentox.ps1 -Files <file1.format>
```

**For multiple files :**

```powershell
.\desaccentox.ps1 -Files <file1.format>,<file2.format>
```

## Accents

Specify the accents you want to replace in the "accents" array (located in accents.json), following this format :

```json
"accents" : [
        [<letter with accent>, <replacement letter>]
    ]
```
