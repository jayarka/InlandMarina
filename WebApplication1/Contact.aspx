<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jum jumbotron text-center">
    </div>
    <div class="container">
        <%--<div class="bg-info mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <div class="my-3 py-3">
                <h2 class="display-5 con1">Contact Information</h2>                
            </div>
            <div class="bg-light shadow-sm mx-auto" style="width: 100%; height: 100px; border-radius: 21px 21px 0 0;"></div>
        </div>--%>


        <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
            <div class="my-3 p-3">
                <h2 class="display-5 con3">Contact Information</h2>
                <p class="lead com3">
                    Inland Lake Marina
                    <br />
                    <%--Box 123<br />--%>
                    Inland Lake, Arizona<br />
                    86038
                </p>
            </div>

            <div class="bg-info mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden <%--shadow-sm mx-auto" style="width: 100%; height: 300px; border-radius: 21px 21px 0 0;--%>">               
                <div class="my-3 p-3">
                    <p class="display-5 con4">Manager: Glenn Cooke<br />
                        Slip Manager: Kimberley Carson<br />
                        Contact email: info@inlandmarina.com<br />
                    </p>
                </div>
            </div>
            <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
            <h5 class="display-5 con3">
                (Office Ph) 928-450-2234<br />
                (Leasing Ph) 928-450-2235<br />
                (Fax) 928-450-2236<br />
                </h5>
            </div>
        </div>

    </div>

</asp:Content>
