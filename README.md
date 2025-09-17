# Dixtionary

<br>
<br>

![logo](./logo-new.png)


<br>
<br>

- This is a simple __terminal based dictionary__ written to help you understand things when you read your pdfs and books from terminal. 📚

- Uses `mpv` and an opensource `api` which you can find in the code. Json parsing is done using `jq` :).



## Installation ⚒

<br>

- Git clone

```bash
git clone https://github.com/hail0hydra/Dixtionary
```

- Go into the directory

```bash
cd Dixtionary
```

- Simple run the program :)

```bash
chmod +x meaning.sh
./meaning.sh 

# For windows:

powershell -ep bypass meaning.ps1

#better is to change the execution policy to RemoteSigned
# in admin powershell:
Set-ExecutionPolicy -CurrentUser RemoteSigned

#after that a simple

./meaning.ps1 

#will also execute the script
```

---

<br>
<br>
<br>

- Added support for __`Windows`__ as well. Just make sure you have `jq` avialable in path.

```powershell
scoop install jq
```

- use [this](./meaning.ps1) script instead of the bash one.

- make sure to add it in the `env`.

```powershell
meaning.ps1
```
