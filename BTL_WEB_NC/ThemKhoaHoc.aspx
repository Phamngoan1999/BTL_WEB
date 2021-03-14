<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ThemKhoaHoc.aspx.cs" Inherits="BTL_WEB_NC.ThemKhoaHoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Ngày có Đồng hồ confix 
<link href="./datepicker/bootstrap-combined.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen" href="./datepicker/bootstrap-datetimepicker.min.css">
<script type="text/javascript" src="./datepicker/jquery.min.js"></script>
<script type="text/javascript" src="./datepicker/bootstrap.min.js"></script>
<script type="text/javascript" src="./datepicker/bootstrap-datetimepicker.js"></script>-->
<!-- Ngày 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(function () {
    $("#datepicker").datepicker();
});-->
<!--Ngày có đồng hồ bootstrap-->
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.0.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./bootstrap-datespicker/bootstrap-datetimepicker.min.css">
</script>
    <div>Thêm khóa học</div>
    <div class="form-group">
       <div class="form-group">
            <label for="formGroupExampleInput2">Môn học</label>
            <asp:DropDownList ID="dsmonhoc" runat="server" CssClass="active form-control" AutoPostBack="true"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Vui lòng chọn hãng sản xuất" 
                ControlToValidate="dsmonhoc">
            </asp:RequiredFieldValidator>
        </div>
        <div class="row">
            <div class='col-sm-12'>
                 <label for="formGroupExampleInput2">Thời gian học </label>
            </div>
            <div class='col-sm-12'>
                  <input type='text' class="form-control"  name="tghoc" value="" id='datetimepicker1' />
            </div>
        </div>
        <div class="form-group">
            <div class='col-sm-12'>
                <label for="formGroupExampleInput2">Ngày bắt đầu</label>
            </div>
            <div class='col-sm-12'>
                  <input type='text' class="form-control"  name="Ngaybatdau" value="" id='datetimepicker2' />
            </div>
        </div>
        <div class="form-group">
            <div class='col-sm-12'>
                <label for="formGroupExampleInput2">Ngày kết thúc</label>
            </div>
            <div class='col-sm-12'>
                  <input type='text' class="form-control"  name="Ngayketthuc" value="" id='datetimepicker3' />
            </div>
        </div>
        <div class="form-group">
            <label for="formGroupExampleInput2">Giảng viên</label>
            <asp:DropDownList ID="dsgiangvien" runat="server" CssClass="active form-control" AutoPostBack="true"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvHang" runat="server" 
                ErrorMessage="Vui lòng chọn hãng sản xuất" 
                ControlToValidate="dsgiangvien">
            </asp:RequiredFieldValidator>
        </div>
    </div>
    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary block full-width m-b" Text="Thêm khóa học" OnClick="btnLogin_Click" />
<style>
    #form1{
        background: #fff;
        box-shadow: 1px 1px 3px rgb(0 0 0 / 10%);
        padding: 10px;
    }
    .textBox { width: 150px; border-radius: 4px 4px 4px 4px; color: #555555; display: inline-block; font-size: 14px; height: 20px; line-height: 20px; margin-bottom: 10px; padding: 4px 6px; vertical-align: middle; background-color: #FFFFFF; border: 1px solid #CCCCCC; box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset; transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s; font-family: Helvetica Neue,Helvetica,Arial,sans-serif; }
</style>
<!--<script type="text/javascript">
     $(function () {
         $('#datetimepicker1').datetimepicker({

         });
     });
</script>-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/moment.min.js" type="text/javascript"></script>
<script src="./bootstrap-datespicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker();
        $('#datetimepicker2').datetimepicker();
        $('#datetimepicker3').datetimepicker();
    });
</script>
</asp:Content>
