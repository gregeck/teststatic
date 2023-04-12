<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<globalization requestEncoding="utf-8" responseEncoding="utf-8" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>GREYSONN</title>
</head>


<body>
        <div id="header">
            <h1 style="text-align: center">Greyson</h1>
            <h1 style="text-align: center">Automated Parsing &amp; Translation System</h1>
            <h1 style="text-align: center">For Mongolian, Tibetan &amp; Chinese</h1>
        </div>
    
        <div id="uploader" class="span-12">
            <form id="form1" runat="server">
                <fieldset> 
                    <p>
                    <label>Operation</label><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="O01" >Translate</asp:ListItem>
                        <asp:ListItem Value="O02" >Translate with Guesser</asp:ListItem>
                        <asp:ListItem Value="O03" >Translate with Assistance</asp:ListItem>
                        <asp:ListItem Value="O04" >Parse</asp:ListItem>
                        <asp:ListItem Value="O05" >Parse with Guesser</asp:ListItem>
                        <asp:ListItem Value="O06" >Parse with Assistance</asp:ListItem>
                        <asp:ListItem Value="O07" >Strip HTML</asp:ListItem>
                        <asp:ListItem Value="O08" >Strip BOM</asp:ListItem>
                        <asp:ListItem Value="O10" >Transcode</asp:ListItem>
                        <asp:ListItem Value="O09" >HELP</asp:ListItem>
                        <asp:ListItem Value="O11" >Download Test files</asp:ListItem>
                        <asp:ListItem Value="O99" Selected="True">SELECT AN OPTION</asp:ListItem>
                    </asp:DropDownList>
                    </p>
                    <p>
                    <label>Source Language</label><br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="mkh" Selected="True">Khalka</asp:ListItem>
                        <asp:ListItem Value="mch">Chakhar</asp:ListItem>
                        <asp:ListItem Value="mbu">Buriad</asp:ListItem>
                        <asp:ListItem Value="mka">Kalmyk</asp:ListItem>
                        <asp:ListItem Value="mor">Oriad</asp:ListItem>
                        <asp:ListItem Value="mda">Daur</asp:ListItem>
                        <asp:ListItem Value="mdo">Dongxiang</asp:ListItem>
                        <asp:ListItem Value="myu">Yugur</asp:ListItem>
                        <asp:ListItem Value="mba">Baoan</asp:ListItem>
                        <asp:ListItem Value="mtu">Tu</asp:ListItem>
                        <asp:ListItem Value="mmo">Moghol</asp:ListItem>
                        <asp:ListItem Value="tce">Central Tibetan</asp:ListItem>
                        <asp:ListItem Value="tam">Amdo Tibetan</asp:ListItem>
                        <asp:ListItem Value="tkh">Kham Tibetan</asp:ListItem>
                        <asp:ListItem Value="chz">Chinese Hanzi</asp:ListItem>
                        <asp:ListItem Value="chp">Chinese Pinyin</asp:ListItem>
                        <asp:ListItem Value="eng">English</asp:ListItem>
                        <asp:ListItem Value="heb">Hebrew</asp:ListItem>
                        <asp:ListItem Value="gre">Greek</asp:ListItem>
                        <asp:ListItem Value="cgb">Chinese GB18030</asp:ListItem>
                        <asp:ListItem Value="cb5">Chinese BIG5</asp:ListItem>
                    </asp:DropDownList>
                    </p>
                    <p>
                    <label>Target Language</label><br />
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="mkh">Khalka</asp:ListItem>
                        <asp:ListItem Value="mch" Selected="True">Chakhar</asp:ListItem>
                        <asp:ListItem Value="mbu">Buriad</asp:ListItem>
                        <asp:ListItem Value="mka">Kalmyk</asp:ListItem>
                        <asp:ListItem Value="mor">Oriad</asp:ListItem>
                        <asp:ListItem Value="mda">Daur</asp:ListItem>
                        <asp:ListItem Value="mdo">Dongxiang</asp:ListItem>
                        <asp:ListItem Value="myu">Yugur</asp:ListItem>
                        <asp:ListItem Value="mba">Baoan</asp:ListItem>
                        <asp:ListItem Value="mtu">Tu</asp:ListItem>
                        <asp:ListItem Value="mmo">Moghol</asp:ListItem>
                        <asp:ListItem Value="tce">Central Tibetan</asp:ListItem>
                        <asp:ListItem Value="tam">Amdo Tibetan</asp:ListItem>
                        <asp:ListItem Value="tam">Kham Tibetan</asp:ListItem>
                        <asp:ListItem Value="chz">Chinese Hanzi</asp:ListItem>
                        <asp:ListItem Value="chp">Chinese Pinyin</asp:ListItem>
                        <asp:ListItem Value="eng">English</asp:ListItem>
                        <asp:ListItem Value="heb">Hebrew</asp:ListItem>
                        <asp:ListItem Value="gre">Greek</asp:ListItem>
                        <asp:ListItem Value="mkl">Khalka (Latinized)</asp:ListItem>
                        <asp:ListItem Value="mcl">Chakhar (Latinized)</asp:ListItem>
                        <asp:ListItem Value="hel">Hebrew (Latinized)</asp:ListItem>
                        <asp:ListItem Value="grl">Greek (Latinized)</asp:ListItem>
                        <asp:ListItem Value="chl">Chinese Hanzi (Unicode)</asp:ListItem>
                    </asp:DropDownList>
                    </p>
                    <p>
                    <label>File Input</label><br />
                    <asp:FileUpload id="FileUpload1" runat="server"></asp:FileUpload>
                    </p>
                    <p>
                    <asp:Button ID="UploadButton" Text="Upload requested file" OnClick="UploadButtonClick" runat="server"></asp:Button>
                    <asp:Label  ID="UploadStatusLabel" runat="server"></asp:Label>
                    </p>
                    <p>
                    <asp:Button ID="StartButton" Text="Start" Width="81px" runat="server"></asp:Button>
                    <asp:Label  ID="OperationStatusLabel" runat="server"></asp:Label>
                    </p>

                </fieldset> 
            </form>
        </div>


        <div id="help" class="span-24 last">
            <h2>Help</h2>
            <ul>
                <li>Usage instructions</li>
                <li>Planned Enhancements</li>
                <li>Partnerships Available ?????? ???? </li>
                <li>Contact Greg Eck at    g r e y s o n @ p o s t o n e . n e t    for discussion and collaboration.</li>
            </ul>
        </div>

</body>
</html>


