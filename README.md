# Saint Coinach Patch

Patches collection of [SaintCoinach](https://github.com/thewakingsands/SaintCoinach/).

## Usage

### Initial setup

```bash
mkdir workspace
cd workspace
git clone https://github.com/thewakingsands/SaintCoinach.git
git clone https://github.com/thewakingsands/SaintCoinachPatch.git
```

This will create a folder strut like:

```
workspace
workspace/SaintCoinach
workspace/SaintCoinachPatch
```

which is expected by all of our scripts.

### Adding patches

```bash
cd workspace/SaintCoinach
# do somework on SaintCoinach repo
git diff > ../SaintCoinachPatch/patches/NNN-your-message.diff
```

### Updating SaintCoinach

```bash
cd SaintCoinachPatch
bin/update.sh
```
