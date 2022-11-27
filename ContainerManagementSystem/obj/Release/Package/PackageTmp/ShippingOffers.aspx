<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShippingOffers.aspx.cs" Inherits="ContainerManagementSystem.ShippingOffers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="lf_box_box lf_promo">
        <h1>Offers</h1>
        <ul>
            <li class="odd first"><a href="#">
                <img src="http://images.otdn.net/lf_logo/logo_150.gif" class="lf_image_logo" alt="" border="0"><br>
                <img src="http://content.onlineagency.com/sites/150/images/hnlawss_m01.jpg" height="96" width="120" class="lf_image_promo" alt="" border="0"></a><h2><a href="#">Aston Waikiki Sunset</a></h2>
                <p class="price">From $258.00+ (USD)</p>
                <p class="description"><span class="lf_promo_dest">Destination: Honolulu<br>
                </span>From the open-air lobby to spacious condominium-style accommodations, guests enjoy the breezy spirit of the tropics during their stay at this family-friendly resort.</p>
            </li>
            <li class="even"><a href="#">
                <img src="http://images.otdn.net/lf_logo/logo_150.gif" class="lf_image_logo" alt="" border="0"><br>
                <img src="http://content.onlineagency.com/sites/150/images/cunfacb_m01.jpg" height="95" width="120" class="lf_image_promo" alt="" border="0"></a><h2><a href="#">Grand Fiesta Americana Cancun Coral Beach</a></h2>
                <p class="price">From $757.00+ (USD)</p>
                <p class="description"><span class="lf_promo_dest">Destination: Cancun<br>
                </span>Create memories to last a lifetime during stays at this premier all-suite resort.</p>
            </li>
            <li class="odd"><a href="#">
                <img src="http://images.otdn.net/lf_logo/logo_114.gif" class="lf_image_logo" alt="" border="0"><br>
                <img src="http://content.onlineagency.com/sites/114/images/cur_215635sml.jpg" height="115" width="115" class="lf_image_promo" alt="" border="0"></a><h2><a href="#">Santa Barbara Beach &amp; Golf Resort</a></h2>
                <p class="price">From $915.00+ (USD)</p>
                <p class="description"><span class="lf_promo_dest">Destination: Curacao<br>
                </span>Santa Barbara Beach &amp; Golf Resort captures natural Caribbean charm and delivers it with an international elegance and sophistication.</p>
            </li>
           
        </ul>
        <p class="fees"><a href="#" onclick="win=window.open('/fees.aspx?site=15101', 'fees', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=1,width=400,height=225'); win.focus(); return false;">Plus sign (+) means taxes and fees are additional</a></p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
