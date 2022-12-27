<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Task1_27_12.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
          <!-- Email input -->
          <div class="form-outline mb-4">
              <asp:TextBox ID="email1" class="form-control form-control-lg" runat="server"></asp:TextBox>
            <label class="form-label" for="form1Example13">Email address</label>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="loginGroup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ControlToValidate="email1" ForeColor="red" ErrorMessage="Wrong email">*</asp:RegularExpressionValidator>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ValidationGroup="loginGroup" ControlToValidate="email1" ForeColor="red" ErrorMessage="RequiredField">*</asp:RequiredFieldValidator>
          </div>
         

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input runat="server" type="password" id="loginpass" class="form-control form-control-lg" />
            <label class="form-label" for="form1Example23">Password</label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="loginGroup" ControlToValidate="loginpass" ErrorMessage="Field is required" ForeColor="red">*</asp:RequiredFieldValidator>

          </div>

          <!-- Submit button -->
           <asp:Button class="btn btn-primary btn-lg btn-block" ID='Button1' ValidationGroup='loginGroup' Text='Submit' 
                        OnClick='Group1Click'  Runat='Server' />
        

        

          <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup='loginGroup' runat="server" ForeColor="Red" />
        

        

      </div>
    </div>
  </div>
</section>
    <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <div class="mx-1 mx-md-4">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input runat="server" type="email" id="signupemail" class="form-control" />
                      <label class="form-label" for="form3Example3c">Your Email</label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ValidationGroup="signupgroup" ControlToValidate="signupemail" ForeColor="red" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="signupgroup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ControlToValidate="signupemail" ForeColor="red" ErrorMessage="Wrong email"></asp:RegularExpressionValidator>

                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input runat="server" type="password" id="signuppass" class="form-control" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ValidationGroup="signupgroup" ControlToValidate="signuppass" ForeColor="red" ErrorMessage="RequiredField">*</asp:RequiredFieldValidator>

                      <label class="form-label" for="form3Example4c">Password</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input runat="server" type="password" id="signupconfirm" class="form-control" />
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ValidationGroup="signupgroup" ControlToValidate="signupconfirm" ForeColor="red" ErrorMessage="RequiredField">*</asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="signuppass" ValidationGroup="signupgroup" ControlToValidate="signupconfirm" Operator="Equal" ErrorMessage="Password don't match">*</asp:CompareValidator> 
                    </div>
                  </div>
                     <asp:Button class="btn btn-primary btn-lg" ID='Button2' ValidationGroup='signupgroup' Text='Register' 
                        OnClick='Group2Click'  Runat='Server' />
                              <asp:ValidationSummary ID="ValidationSummary2" ValidationGroup='signupgroup' runat="server" ForeColor="Red" />

                  <div class="form-check d-flex justify-content-center mb-5">

                </div>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
