    1  clear
    2  git remote add upstream https://github.com/jonathanetitoo/UNIX-02-SIN-C-Mar-Jul-2026.git
    3  git remote -v
    4  git fetch upstream
    5  git checkout -b filesystem upstream/filesystem
    6  git push origin filesystem
    7  git pull origin filesystem --rebase
    8  git push origin filesystem
    9  git rebase --abort
   10  git reset --hard upstream/filesystem
   11  git push origin filesystem --force
   12  git branch
   13  ls
   14  Reload Window
   15  git log --oneline --decorate -5
   16  clear
   17  cat README.md
   18  cat filesystem_script.sh
   19  find . -type f
   20  cd /dev
   21  ls
   22  cd /proc
   23  ls
   24  cd /proc
   25  ls
   26  nano filesystem_script.sh
   27  cat cpuinfo
   28  bash filesystem_script.sh
   29  clear
   30  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026
   31  ls
   32  bash filesystem_script.sh
   33  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026
   34  bash filesystem_script.sh
   35  cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026
   36  clear
   37  git status
   38  git push origin filesystem
   39  clear
   40  git fetch upstream 
   41  git checkout -b eval_p2_1_g1
   42  git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1
   43  clear
   44  git checkout eval_p2_1_g1
   45  git reset --hard upstream/eval_p2_1_g1
   46  git push origin eval_p2_1_g1 --force
   47  cd orion
   48  ls
   49  mv notas apuntes
   50  mkdir respaldos
   51  cd evaluation
   52  ls
   53  cd orion
   54  ls
   55  ls -R
   56  mv notas apuntes
   57  mkdir respaldos
   58  git add .
   59  git commit -m "Fix problem 1: directory structure corrected"
   60  ls
   61  git add .
   62  git commit -m "Fix problem 1: directory structure corrected"
   63  mv telemetria.log apuntes/
   64  mv config.tmp config.conf
   65  git add .
   66  git commit -m "Fix problem 2: moved and renamed files"
   67  ls apuntes
   68  chmod 640 apuntes/telemetria.log
   69  ls -l apuntes/telemetria.log
   70  git add .
   71  git commit -m "Fix problem 3: permissions set to 640 on telemetria.log"
   72  chmod u+x script.sh
   73  chmod o-w config.conf
   74  ls -l script.sh config.conf
   75  git add .
   76  git commit -m "Fix problem 4: symbolic permissions corrected"
   77  chmod 744 script.sh
   78  chmod go-w config.conf
   79  ls -l script.sh config.conf
   80  git add .
   81  git commit -m "Fix problem 4: symbolic permissions corrected properly"
   82  chmod u+s script.sh
   83  ls -l script.sh
   84  git add .
   85  git commit -m "Fix problem 5: SUID enabled on script.sh"
   86  git status
   87  ls -ld /tmp/orion_zone
   88  mkdir -p /tmp/orion_zone
   89  chmod 777 /tmp/orion_zone
   90  chmod +t /tmp/orion_zone
   91  ls -ld /tmp/orion_zone
   92  git add .
   93  git commit -m "Fix problem 6: sticky bit applied to /tmp/orion_zone"
   94  git commit --allow-empty -m "Fix problem 6: sticky bit applied to /tmp/orion_zone"
   95  cat > /tmp/lyra.batch <<'EOF'
%no-protection
Key-Type: RSA
Key-Length: 2048
Name-Real: lyra
Name-Email: lyra@orion.lab
Expire-Date: 0
%commit
EOF

   96  gpg --batch --generate-key /tmp/lyra.batch
   97  gpg --list-keys lyra@orion.lab
   98  gpg --encrypt --recipient lyra@orion.lab -o apuntes/telemetria.log.gpg apuntes/telemetria.log
   99  ls -l apuntes
  100  git add .
  101  git commit -m "Fix problem 7: GPG key generated and telemetria.log encrypted"
  102  gpg --clearsign -o config.conf.asc config.conf
  103  ls -l
  104  gpg --verify script.sh.sig script.sh
  105  rm script.sh.sig
  106  gpg --verify script.sh.sig script.sh
  107  gpg --detach-sign -o script.sh.sig script.sh
  108  gpg --verify script.sh.sig script.sh
  109  git add .
  110  git commit -m "Fix problem 8: regenerated correct GPG signature for script.sh"
  111  git push origin eval_p2_1_g1
  112  history
  113  history > history.sh
