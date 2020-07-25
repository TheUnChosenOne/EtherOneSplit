
state("UDK", "1.00")
{
    bool addressone: 0x2C8606C;
    bool addresstwo: 0x2C87324;
    bool addressthree: 0x2C604B4;
    bool addressfor: 0x2C603F0;
    bool addressfive: "UDK.exe",0x2BBD7F0;
}
state("EtherOne-Win64-Shipping", "2.00")
{
    bool addresssix: 0x2B380C0;
    bool addressseven: 0x2DAF85C;
}
startup
{
   settings.Add("working", false, "If you see this its working");
   
}

isLoading
{

   if ( game.ProcessName.ToString() == "EtherOne-Win64-Shipping" )
    {
   if ( current.addresssix == true || current.addressseven == true )
    {
        return true;
     } 
     else 
     {
        return false;
     }
    } 
     if ( game.ProcessName.ToString() == "UDK" )
     {
        if ( current.addressone == true || current.addresstwo == true || current.addressthree == true || current.addressfor == true || current.addressfive == true)
     {
         return true;
      } 
      else 
      {
         return false;
      }
     }
    
}
