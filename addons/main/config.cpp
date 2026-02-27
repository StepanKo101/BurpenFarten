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

    class burp1  { name = "burp #1";  sound[] = {"\z\bf\addons\main\sounds\burp1.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp2  { name = "burp #2";  sound[] = {"\z\bf\addons\main\sounds\burp2.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp3  { name = "burp #3";  sound[] = {"\z\bf\addons\main\sounds\burp3.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp4  { name = "burp #4";  sound[] = {"\z\bf\addons\main\sounds\burp4.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp5  { name = "burp #5";  sound[] = {"\z\bf\addons\main\sounds\burp5.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp6  { name = "burp #6";  sound[] = {"\z\bf\addons\main\sounds\burp6.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp7  { name = "burp #7";  sound[] = {"\z\bf\addons\main\sounds\burp7.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp8  { name = "burp #8";  sound[] = {"\z\bf\addons\main\sounds\burp8.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp9  { name = "burp #9";  sound[] = {"\z\bf\addons\main\sounds\burp9.ogg",  1, 1, 5}; titles[] = {0, ""}; };
    class burp10 { name = "burp #10"; sound[] = {"\z\bf\addons\main\sounds\burp10.ogg", 1, 1, 5}; titles[] = {0, ""}; };
    class burp11 { name = "burp #11"; sound[] = {"\z\bf\addons\main\sounds\burp11.ogg", 1, 1, 5}; titles[] = {0, ""}; };
    class burp12 { name = "burp #12"; sound[] = {"\z\bf\addons\main\sounds\burp12.ogg", 1, 1, 5}; titles[] = {0, ""}; };
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

            class burpen { // fucntionName
                file = "\z\bf\addons\main\functions\burpen.sqf"; // the script/function
                preInit = 0;
                postInit = 1; 
        };
    };
};
};
