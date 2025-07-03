// clang++ main.cpp -o installer -std=c++23

#include <iostream>
#include <string>
#include <string_view>
#include <vector>

bool input(const std::string_view &query);
bool ask_for_pkg(const std::string &pkg);

auto main() -> int
{
    std::vector<std::string> pkgs {"scripts", "niri", "fuzzel", "foot", "waybar"};

    std::cout << "Hello and welcome to the installer for Ankush's Dotfiles Installer!!\n\n";

    if (!input("Do you want to install all the dotfiles?")) return 0;
    std::cout << std::endl;

    // user is sure so start the process
    std::string cmd {"stow"};

    std::cout << "Do you agree upon the installation of the scripts?\n";
    if (!input("Most probably in your ~/.local/bin/ directory?"))
    {
        std::cout << "Warning! The scripts are needed for the proper working of the dotfiles!";
        // do something with the cmd
    }
    else
    {
        // do something with the cmd
    }

    for (auto &pkg: pkgs)
    {
        if (ask_for_pkg(pkg))
        {
            // do something
        }
    }
}

bool input(const std::string_view &query)
{
    std::string input {};
    std::cout << query << " [y/n]: ";
    std::cin >> input;

    if (input == "y" || input == "Y") { return true; }

    return false;
}

bool ask_for_pkg(const std::string &pkg)
{
    using namespace std::string_literals;

    const bool ans = input("Do you want "s + pkg + "?");
    std::cout << std::endl;

    return ans;
}
