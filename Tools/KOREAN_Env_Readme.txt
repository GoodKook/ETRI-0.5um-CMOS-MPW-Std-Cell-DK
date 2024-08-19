WSL2/Ubuntu Korean Evvironment
------------------------------

[WSL 우분투 한글화 설정/요약]

1. 한글 폰트 설치

    $ sudo apt-get install fonts-nanum*

2. 로케일 설정

    $ sudo dpkg-reconfigure locales

    ko_KR.UTF-8 UTF-8로 체크

3. 터미널 재시작

4. locale 명령으로 LANG=ko_KR.UTF-8 변경 확인

    $ locale

5. 한글 입력기 설치

    $ sudo apt update
    $ sudo apt-get update
    $ sudo apt install fcitx fcitx-hangul fonts-noto-cjk dbus-x11

6. im-config 명령으로 입력기 설정 실행 후 fcitx로 설정

    $ im-config

7. 편집기로 Kor_env 파일을 만들어 아래의 내용 추가

    #!/bin/bash
    export QT_IM_MODULE=fcitx
    export GTK_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
    export DefaultIMModule=fcitx

    #optional
    fcitx-autostart &>/dev/null

    한글 사용이 필요할 때 사용

8. 언어 선택기 설치

    $ sudo apt install language-selector-gnome

9. 한국어 선택

    $ source Kor_env
    $ sudo gnome-language-selector

10. wsl 셧다운 후 재시작

    PS> wsl --shutdown
    PS> wsl

11. 한글 입력기 설치

    $ fcitx-config-gtk3

    왼쪽 아래 + 버튼을 클릭해서 한국어 추가. 한글-영문 전환 키는 ctrl+Space

