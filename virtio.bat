dism /get-wiminfo /wimfile:C:\iso\tinier11\sources\boot.wim
dism /mount-wim /wimfile:C:\iso\tinier11\sources\boot.wim /index:1 /mountdir:C:\mnt

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\Balloon\w11\amd64\balloon.inf /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\NetKVM\w11\amd64\netkvm.inf  /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\viostor\w11\amd64\viostor.inf /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:C:\mnt /get-drivers
dism /unmount-wim /mountdir:C:\mnt /commit





dism /get-wiminfo /wimfile:C:\iso\tinier11\sources\boot.wim
dism /mount-wim /wimfile:C:\iso\tinier11\sources\boot.wim /index:2 /mountdir:C:\mnt

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\Balloon\w11\amd64\balloon.inf /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\NetKVM\w11\amd64\netkvm.inf  /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\viostor\w11\amd64\viostor.inf /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:C:\mnt /get-drivers
dism /unmount-wim /mountdir:C:\mnt /commit






dism /get-wiminfo /wimfile:C:\iso\tinier11\sources\install.wim
dism /mount-wim /wimfile:C:\iso\tinier11\sources\install.wim /index:1 /mountdir:C:\mnt

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\Balloon\w11\amd64\balloon.inf /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\NetKVM\w11\amd64\netkvm.inf  /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\viostor\w11\amd64\viostor.inf /forceunsigned

dism /image:C:\mnt /add-driver /driver:C:\iso\virtio\vioscsi\w11\amd64\vioscsi.inf /forceunsigned

dism /image:C:\mnt /get-drivers
dism /unmount-wim /mountdir:C:\mnt /commit
pause