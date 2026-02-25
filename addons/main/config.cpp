class CfgPatches
{
    class BF_Main
    {
        name = "BurpenFarten Main";
        author = "StepanKo101";
        url = "";
        
        requiredVersion = 0.1;
        requiredAddons[] = {};
        
        units[] = {};
        weapons[] = {};
    };
};

class CfgSounds
{
    sounds[] = {};
    
    class fart1  { name = "fart #1";  sound[] = {"\z\bf\addons\main\sounds\fart1.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart2  { name = "fart #2";  sound[] = {"\z\bf\addons\main\sounds\fart2.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart3  { name = "fart #3";  sound[] = {"\z\bf\addons\main\sounds\fart3.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart4  { name = "fart #4";  sound[] = {"\z\bf\addons\main\sounds\fart4.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart5  { name = "fart #5";  sound[] = {"\z\bf\addons\main\sounds\fart5.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart6  { name = "fart #6";  sound[] = {"\z\bf\addons\main\sounds\fart6.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart7  { name = "fart #7";  sound[] = {"\z\bf\addons\main\sounds\fart7.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart8  { name = "fart #8";  sound[] = {"\z\bf\addons\main\sounds\fart8.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart9  { name = "fart #9";  sound[] = {"\z\bf\addons\main\sounds\fart9.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class fart10 { name = "fart #10"; sound[] = {"\z\bf\addons\main\sounds\fart10.ogg", 1, 1, 5}; titles[] = {0, ""}; };
    class fart11 { name = "fart #11"; sound[] = {"\z\bf\addons\main\sounds\fart11.ogg", 1, 1, 5}; titles[] = {0, ""}; };
    class fart12 { name = "fart #12"; sound[] = {"\z\bf\addons\main\sounds\fart12.ogg", 1, 1, 5}; titles[] = {0, ""}; };
};

class CfgFunctions
{
    class BF // TAG
    {
        class Main // Category
        {
            class farten { // fucntionName
                file = "\z\bf\addons\main\functions\farten.sqf"; // the script/function
                preInit = 0;
                postInit = 1;
            }; 
        };
    };
};