@echo off

if not exist %delphiooLib%\ooBatch\ (
  @echo "Clonning ooBatch..."
  git clone https://github.com/VencejoSoftware/ooBatch.git %delphiooLib%\ooBatch\
  call %delphiooLib%\ooBatch\code\get_dependencies.bat
)

if not exist %delphiooLib%\ooEntity\ (
  @echo "Clonning ooEntity..."
  git clone https://github.com/VencejoSoftware/ooEntity.git %delphiooLib%\ooEntity\
  call %delphiooLib%\ooEntity\batch\get_dependencies.bat
)
