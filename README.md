<!--
####################################################
# ANSIBLE-PLAYBOOK README.md
#####################################################
#        _      _                            _
#    ___(_) ___| | ___ __ ___   __ _ _ __   (_) ___
#   / __| |/ _ \ |/ / '_ ` _ \ / _` | '_ \  | |/ _ \
#   \__ \ |  __/   <| | | | | | (_| | | | |_| | (_) |
#   |___/_|\___|_|\_\_| |_| |_|\__,_|_| |_(_)_|\___/                 
#
#              Created by Jouke Siekman
#             Netherlands 2023 Leerbroek
#                https://siekman.io
#
#####################################################
## README.MD domainreminder
#####################################################
-->
<a name="readme-top"></a>
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Visual Studio](https://img.shields.io/badge/Visual%20Studio-5C2D91.svg?style=for-the-badge&logo=visual-studio&logoColor=white)
![Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Cisco](https://img.shields.io/badge/cisco-%23049fd9.svg?style=for-the-badge&logo=cisco&logoColor=black)
![yaml-logo]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/siekman-io/domainreminder">
    <img src="https://siekman.io/images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">domainreminder</h3>

  <p align="center">
    A script to add your TransIP domain renewal dates to your Apple Calender.
    <br />
    <a href="https://github.com/siekman-io/domainreminder"><strong>Explore the docs »</strong></a>
    <br />
    <br />
  </p>
</div>



<!-- ABOUT THE PROJECT -->
## About The Project
<img src="https://siekman.io/github/domainreminder/scr_domainreminder.jpg)" alt="DomainReminder" width="500" height="600">

This program is a must have for domain traders. This program retrieves the data from your domains via TransIP API. Including the renewal dates. Because a merchant often forgets to cancel a domain before the expiry of the period, it would be useful if these dates are recorded in your calendar. So that you receive a timely reminder whether you want to renew or terminate a domain
This script saves all dates in your calendar and sets a default notification 14 days before the renewal date of your domain

Here's why:
* Because all the data is collected by the TransIP API you always have the correct data. 
* Never forget to cancel a domain, this includes also a cancel script, so for quick cancelling from your computer
* Create a new agenda twice a year , and have always up to date calendar items
* Have the calendar items on all your devices trough Apple's Icloud  ( script is for OSX )

Anyways a good script for domain traders , but it can also applied on other services with api ( you need to change one or two things ). 
For a small price i will be available for that.          

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->



### Built With

This script is build with Bash, Python and Applescript.  

* [![yaml][yaml-logo]][yaml-url]


<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->



<!-- GETTING STARTED -->
## Getting Started

This are the instructions to start using the script.

### Prerequisites

- [x] Apple Computer with OSX
- [x] Terminal access
- [x] Python installed
- [x] jq installed ( Commandline JSON Processor )
- [x] TransIP API access 


### Installation

_Follow steps below._


* Clone the repo
   ```sh
   cd ~
   git clone https://github.com/siekman-io/domainreminder.git
   ```

* Set Api key in a file in your ~/.ssh folder and save it with <ctrl - x>
  ```
  nano ~/.ssh/transip
  ```

* Create a seperate calender in your program on menu / archive / new calender > icloud and name this

* Change CALNAME= in the variable to the name of your new calender and save with <ctrl - x>
  ```sh
  nano ~/domainreminder/vars
  ```
  
* now you are ready to run the script

for a more detailed description please visit my website
<a href="https://www.siekman.io/transip-domain-renewal-dates-to-apple-calendar/"><strong>[siekman.io detailed post]</strong></a>


<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->



<!-- USAGE EXAMPLES -->
## Usage

You can start the script to import all your domains and import it to your calender. 

* Execute your script
  ```sh
  cd ~/domainreminder
  chmod +x domainreminder.sh
  chmod +x cancel.sh
  ./domainreminder.sh
  ```

Now you see in the calender all your domains 14 days before cancelling date. In the notes of the appointment you see also the command you can execute to cancel a domain. 

* cancelscript 
  ```sh
  ~/domainreminder/cancel.sh <domainname you want to end>
  ```


<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->




<!-- CONTACT -->
## Contact

- Twitter       - [@JoukeSiekman](https://twitter.com/JoukeSiekman)
- LinkedIN      - [LinkedIn](https://www.linkedin.com/in/jouke-siekman})
- Mail me:      - [info@siekman.io]

Project Link: [https://github.com/siekman-io/domainreminder](https://github.com/siekman-io/domainreminder)

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->



<!-- ACKNOWLEDGMENTS -->
## Support me

Would you like to support me. Thats really nice you can support me by the following ways:

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/siekman)

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/jouke-siekman/
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
[yaml-logo]: https://img.shields.io/badge/yaml-000000?style=for-the-badge&logo=yaml&logoColor=blue
[yaml-url]: https://yaml.org
<!--[Visual Studio](https://img.shields.io/badge/Visual%20Studio-5C2D91.svg?style=for-the-badge&logo=visual-studio&logoColor=white)
[macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)
[Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)
[iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)
[Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
[Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
[Cisco](https://img.shields.io/badge/cisco-%23049fd9.svg?style=for-the-badge&logo=cisco&logoColor=black)
[Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
[Home Assistant](https://img.shields.io/badge/home%20assistant-%2341BDF5.svg?style=for-the-badge&logo=home-assistant&logoColor=white)
[Homebridge](https://img.shields.io/badge/homebridge-%23491F59.svg?style=for-the-badge&logo=homebridge&logoColor=white)
[Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
[Notion](https://img.shields.io/badge/Notion-%23000000.svg?style=for-the-badge&logo=notion&logoColor=white)
[Zigbee](https://img.shields.io/badge/zigbee-%23EB0443.svg?style=for-the-badge&logo=zigbee&logoColor=white)
[Discord](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)
[Facebook](https://img.shields.io/badge/Facebook-%231877F2.svg?style=for-the-badge&logo=Facebook&logoColor=white)
[LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)
[Messenger](https://img.shields.io/badge/Messenger-00B2FF?style=for-the-badge&logo=messenger&logoColor=white)
[Mastodon](https://img.shields.io/badge/-MASTODON-%232B90D9?style=for-the-badge&logo=mastodon&logoColor=white)
[Reddit](https://img.shields.io/badge/Reddit-FF4500?style=for-the-badge&logo=reddit&logoColor=white)
[Signal](https://img.shields.io/badge/Signal-%23039BE5.svg?style=for-the-badge&logo=Signal&logoColor=white)
[Skype](https://img.shields.io/badge/Skype-%2300AFF0.svg?style=for-the-badge&logo=Skype&logoColor=white)
[Slack](https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=slack&logoColor=white)
[Telegram](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)
[Twitter](https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white)
[WhatsApp](https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white)
[YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)-->
