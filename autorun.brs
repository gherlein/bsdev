Sub Main()
    msgPort = CreateObject("roMessagePort")

    regB = CreateObject("roRegistrySection", "brightscript")
    regB.Write("debug", "1")
    regB.Flush()

    reg = CreateObject("roRegistrySection", "networking")
    reg.Write("bbhf", "on")
    reg.Write("dwse", "yes")
    reg.Write("curl_debug", "1")
    reg.write("ssh", "22")
    reg.write("telnet_log_level", "1") 
    reg.write("telnet_server","24")
    reg.write("serial_with_telnet", "0")
    reg.Flush()

    msg = "Added networking registry settings..."
    print msg

    n=CreateObject("roNetworkConfiguration", 0) ' ethernet interface
    n.SetLoginPassword("password")
    n.Apply()

    msg = "All done, you can reboot..."
    print msg

    while true
        msg = wait(0,msgPort)
    end while
End Sub





