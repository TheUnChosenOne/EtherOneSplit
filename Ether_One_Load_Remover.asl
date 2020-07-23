
state("UDK")
{
    bool addressone: 0x2C8606C;
    bool addresstwo: 0x2C87324;
    bool addressthree: 0x2C604B4;
    bool addressfor: 0x2C603F0;
    bool addressfive: 0x2BBD7F0;
}
startup
{
   settings.Add("working", false, "If you see this its working");
}

isLoading
{
    if ( current.addressone == true || current.addresstwo == true || current.addressthree == true || current.addressfor == true || current.addressfive == true )
    {
        return true;
     } 
     else 
     {
        return false;
     }
}
