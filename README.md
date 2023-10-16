<!-- PROJECT -->
<h3 align="center">My Terminal and Nvim Setup</h3>

<p align="center">
Things I use to customize my terminal and Nvim to feel more a coder ;P
</p>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

I use Ligaturized Nerd Font, Clink for a smarter terminal, Starship for lua based terminal prompt customization and nvim for lua based development environment configuration. My setup is for the Windows terminal primarily focused on cmd. Like everyone's journey from a development environment to a personalized development environment; this is a snapshot of the current point in my journey :)
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* Starship
* Clink
* Ligaturized Hack Nerd Font
* CMD (Windows Terminal :0)
* NVIM

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

1. Install Hack Nerd Font <br />
  You can download the base Hack Font at: https://github.com/source-foundry/Hack <br />
2. Install the Ligaturized version of Hack Nerd Font <br />
  Get your zip at: https://github.com/gaplo917/Ligatured-Hack/releases <br />
3. Install Clink <br />
  Clink provides a convinent exe: https://mridgers.github.io/clink/ <br />
4. Install Starship <br />
  Get this after the above: https://starship.rs/guide/#%F0%9F%9A%80-installation <br />
5. Follow configuration steps on Starship; my config just uses the defaults <br />
6. Get NVIM at: <br />
  https://github.com/neovim/neovim/wiki/Installing-Neovim <br />
7. Now you will need a C language compiler (Recommendation: clang). <br />
  We need this primarily for treesitter. In case you don't want treesitter yet, you can skip this<br />
    * Get the C compiler that'll fit you from: <br />
      https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support
    * Don't forget to get the Visual Studio build tools. Alternatively you can get Visual Studio IDE:
      https://visualstudio.microsoft.com/downloads/
8. Since my config currently is primarily about python, I recommend getting pyenv
    * You can install pyenv for windows through <a href="https://chocolatey.org/install">Chocolatey</a>
    * Once you have Chocolatey, the next step is as simple as:<br /><br />
      ```pwsh
      choco install pyenv-win
      ```
      <br />
      NOTE: Please run the above command with Admin priviledges in PowerShell, Or Chocolate will be mad at you :(
    * With pyenv setup we should add the pyenv-virtualenv folder to our `users/<yourname>/.pyenv/pyenv-win/` folder
      You can get the above from: https://github.com/pyenv/pyenv-virtualenv
9. We will need a npm/Node installation for the LSPs. <br/>
    * You can get nvm-windows from: <br />
      https://github.com/coreybutler/nvm-windows/releases
    * Now you can follow: <br />
      https://www.freecodecamp.org/news/nvm-for-windows-how-to-download-and-install-node-version-manager-in-windows-10/
10. With all the above done you can now:
    * Create a nvim folder in your `users/<yourname>/Local/AppData/` directory: <br /> <br />
      ```cmd
        mkdir nvim
      ```
      <br />
    * Copy the `lua` directory and `init.lua` file from a clone of this repo
11. Launch your nvim. Lazy should start getting all your plugins. Enjoy!!

PS: I have included some of the executables and the Liga Hack folder for some convinence.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

