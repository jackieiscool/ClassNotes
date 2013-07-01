These are the class notes.
You can copy them to your computer if you like.

Homework / Lab Disucssion
===

See <https://github.com/jherrlin/ClassNotes/issues>.

Updating
===

**Important**: If you have never cloned the notes before,
please see the **First Time** instructions below.

```bash
# Go home
pushd ~/
# see that you got there
pwd
# see what you see
ls

# Get to the notes directory
pushd ~/ClassNotes
# see that you got there
pwd
# see what you see
ls

# check the current state
git status
# Pull the updates
git pull origin master
# check the state again
git status
```

First Time
===

**Important**: If you have already cloned the ClassNotes folder,
you don't need to clone it again.
Instead you should update it as mentioned above.

0. If you haven't done so, set your get User Name, Email, and coloring

    ```bash
    # DON'T COPY / PASTE!!! Change it first!
    git config --global user.name "John Doe"
    git config --global user.email john.doe@email.com

    # Get your git color on
    git config --global color.ui true
    ```

0. If you haven't done so, and create an ssh key

    ```bash
    # This creates a key if one doesn't exist
    ls ~/.ssh/id_rsa.pub || ssh-keygen
    ```

1. Go to <https://github.com/jherrlin/ClassNotes> (you're already here)

2. Clone the repository to your own computer

    ```bash
    # Go to your home
    pushd ~
    # see that you got there
    pwd
    # see what you see
    ls

    # Clone the repo
    git clone https://github.com/jherrlin/ClassNotes.git ./ClassNotes
    # Check that it was cloned
    ls

    # Get into the folder
    pushd ClassNotes
    # see that you got there
    pwd
    # see what you see
    ls
    ```
3. Be Happy
