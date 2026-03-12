class CfgPatches
{
    class BF_Main
    {
        name = "BurpenFarten Main";
        author = "StepanKo101";
        url = "";
        
        requiredVersion = 0.50;
        requiredAddons[] = {};
        
        units[] = {};
        weapons[] = {};
    };
};

class CfgSounds
{
    sounds[] = {};
    // grand sounds are the loudest, mid sounds are medium loud, low sounds are the quietest. Distance also scales.
    class fgrand1 { name = "fart #1";  sound[] = {"\z\bf\addons\main\sounds\fgrand1.ogg",  3, 1, 25}; titles[] = {0, ""}; };
    class fgrand2 { name = "fart #2";  sound[] = {"\z\bf\addons\main\sounds\fgrand2.ogg",  3, 1, 25}; titles[] = {0, ""}; };
    class fgrand3 { name = "fart #3";  sound[] = {"\z\bf\addons\main\sounds\fgrand3.ogg",  3, 1, 25}; titles[] = {0, ""}; };
    class fgrand4 { name = "fart #4";  sound[] = {"\z\bf\addons\main\sounds\fgrand4.ogg",  3, 1, 25}; titles[] = {0, ""}; };
    class flow1   { name = "fart #5";  sound[] = {"\z\bf\addons\main\sounds\flow1.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class flow2   { name = "fart #6";  sound[] = {"\z\bf\addons\main\sounds\flow2.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class flow3   { name = "fart #7";  sound[] = {"\z\bf\addons\main\sounds\flow3.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class fmid1   { name = "fart #8";  sound[] = {"\z\bf\addons\main\sounds\fmid1.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    class fmid2   { name = "fart #9";  sound[] = {"\z\bf\addons\main\sounds\fmid2.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    class fmid3   { name = "fart #10"; sound[] = {"\z\bf\addons\main\sounds\fmid3.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    class fmid4   { name = "fart #11"; sound[] = {"\z\bf\addons\main\sounds\fmid4.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    class fmid5   { name = "fart #12"; sound[] = {"\z\bf\addons\main\sounds\fmid5.ogg",    2, 1, 15}; titles[] = {0, ""}; };

    class bgrand1  { name = "burp #1";  sound[] = {"\z\bf\addons\main\sounds\bgrand1.ogg",  3, 1, 25}; titles[] = {0, ""}; };
    class bgrand2  { name = "burp #2";  sound[] = {"\z\bf\addons\main\sounds\bgrand2.ogg",  3, 1, 25}; titles[] = {0, ""}; };
    class bgrand3  { name = "burp #3";  sound[] = {"\z\bf\addons\main\sounds\bgrand3.ogg",  3, 1, 25}; titles[] = {0, ""}; };
    class blow1    { name = "burp #4";  sound[] = {"\z\bf\addons\main\sounds\blow1.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class blow2    { name = "burp #5";  sound[] = {"\z\bf\addons\main\sounds\blow2.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class blow3    { name = "burp #6";  sound[] = {"\z\bf\addons\main\sounds\blow3.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class blow4    { name = "burp #7";  sound[] = {"\z\bf\addons\main\sounds\blow4.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class blow5    { name = "burp #8";  sound[] = {"\z\bf\addons\main\sounds\blow5.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class bmid1    { name = "burp #9";  sound[] = {"\z\bf\addons\main\sounds\bmid1.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    class bmid2    { name = "burp #10"; sound[] = {"\z\bf\addons\main\sounds\bmid2.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    class bmid3    { name = "burp #11"; sound[] = {"\z\bf\addons\main\sounds\bmid3.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    class bmid4    { name = "burp #12"; sound[] = {"\z\bf\addons\main\sounds\bmid4.ogg",    2, 1, 15}; titles[] = {0, ""}; };
    // fail sounds are the quietest and shortest, they are meant to be played when the player fails to fart or burp.
    class fail1   { name = "fail #1";  sound[] = {"\z\bf\addons\main\sounds\fail1.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class fail2   { name = "fail #2";  sound[] = {"\z\bf\addons\main\sounds\fail2.ogg",    1, 1, 5}; titles[] = {0, ""}; };
    class fail3   { name = "fail #3";  sound[] = {"\z\bf\addons\main\sounds\fail3.ogg",    1, 1, 5}; titles[] = {0, ""}; };
};

class CfgFunctions
{
    class BF // TAG
    {
        class Main // Category
        {
            class fartenKey { // functionName | This class adds keybind
                file = "\z\bf\addons\main\functions\fartenKey.sqf"; // the script/function
                preInit = 0;
                postInit = 1;
            };

            class burpenKey { // functionName | This class adds keybind
                file = "\z\bf\addons\main\functions\burpenKey.sqf"; // the script/function
                preInit = 0;
                postInit = 1;
            };

            class farter { // functionName 
                file = "\z\bf\addons\main\functions\farter.sqf"; // the script/function
                preInit = 0;
                postInit = 0;
            };

            class burper { // functionName 
                file = "\z\bf\addons\main\functions\burper.sqf"; // the script/function
                preInit = 0;
                postInit = 0;
            };

            class gassiness { // functionName 
                file = "\z\bf\addons\main\functions\gassiness.sqf"; // the script/function
                preInit = 0;
                postInit = 1;

        };
    };
};
};
