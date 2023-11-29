@echo.Welcome to the virtio driver  image creator!

@rem pre-cleanup of temp dirs
rd /s /q .\mnt 2>NUL

mkdir mnt

@rem add driver to boot.wim index 1
dism /get-wiminfo /wimfile:.\tinier11\sources\boot.wim

dism /mount-wim /wimfile:.\tinier11\sources\boot.wim /index:1 /mountdir:.\mnt
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\Balloon\w11\amd64\balloon.inf /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\NetKVM\w11\amd64\netkvm.inf  /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\viostor\w11\amd64\viostor.inf /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:.\mnt /get-drivers
dism /unmount-wim /mountdir:.\mnt /commit


@rem add driver to boot.wim index 2
dism /get-wiminfo /wimfile:.\tinier11\sources\boot.wim

dism /mount-wim /wimfile:.\tinier11\sources\boot.wim /index:2 /mountdir:.\mnt
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\Balloon\w11\amd64\balloon.inf /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\NetKVM\w11\amd64\netkvm.inf  /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\viostor\w11\amd64\viostor.inf /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:.\mnt /get-drivers
dism /unmount-wim /mountdir:.\mnt /commit


@rem add driver to install.wim
dism /get-wiminfo /wimfile:.\tinier11\sources\install.wim

dism /mount-wim /wimfile:.\tinier11\sources\install.wim /index:1 /mountdir:.\mnt
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\Balloon\w11\amd64\balloon.inf /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\NetKVM\w11\amd64\netkvm.inf  /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\viostor\w11\amd64\viostor.inf /forceunsigned
dism /image:.\mnt /add-driver /driver:.\virtio-win-0.1.240\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:.\mnt /get-drivers
dism /unmount-wim /mountdir:.\mnt /commit
rd /s /q .\mnt 2>NUL
rd /s /q .\virtio-win-0.1.240 2>NUL

@echo.The virtio driver image success!
