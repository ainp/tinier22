@echo.Welcome to the virtio driver image creator!

@rem pre-cleanup of temp dirs
rd /s /q C:\ainpmnt 2>NUL

mkdir C:\ainpmnt

@rem add driver to boot.wim index 1
dism /get-wiminfo /wimfile:C:\iso\tinier11\sources\boot.wim

dism /mount-wim /wimfile:C:\iso\tinier11\sources\boot.wim /index:1 /mountdir:C:\ainpmnt
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\Balloon\w11\amd64\balloon.inf /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\NetKVM\w11\amd64\netkvm.inf  /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\viostor\w11\amd64\viostor.inf /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:C:\ainpmnt /get-drivers
dism /unmount-wim /mountdir:C:\ainpmnt /commit


@rem add driver to boot.wim index 2
dism /get-wiminfo /wimfile:C:\iso\tinier11\sources\boot.wim

dism /mount-wim /wimfile:C:\iso\tinier11\sources\boot.wim /index:2 /mountdir:C:\ainpmnt
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\Balloon\w11\amd64\balloon.inf /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\NetKVM\w11\amd64\netkvm.inf  /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\viostor\w11\amd64\viostor.inf /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:C:\ainpmnt /get-drivers
dism /unmount-wim /mountdir:C:\ainpmnt /commit


@rem add driver to install.wim
dism /get-wiminfo /wimfile:C:\iso\tinier11\sources\install.wim

dism /mount-wim /wimfile:C:\iso\tinier11\sources\install.wim /index:1 /mountdir:C:\ainpmnt
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\Balloon\w11\amd64\balloon.inf /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\NetKVM\w11\amd64\netkvm.inf  /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\viostor\w11\amd64\viostor.inf /forceunsigned
dism /image:C:\ainpmnt /add-driver /driver:C:\iso\virtio\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:C:\ainpmnt /get-drivers
dism /unmount-wim /mountdir:C:\ainpmnt /commit
rd /s /q C:\ainpmnt 2>NUL

@echo.The virtio driver image success!
