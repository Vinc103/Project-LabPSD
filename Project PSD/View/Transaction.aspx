<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="Project_PSD.View.Transaction" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transaction Page</title>

    <style>
     body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
     }

    .container {
        width: 80%;
        margin: 155px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h1, h2 {
        text-align: center;
        color: #333;
    }

    .cart-details, .order-summary, .payment-details {
        margin-bottom: 20px;
    }

    .cart-details table {
        width: 100%;
        border-collapse: collapse;
    }

.cart-details th, .cart-details td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

.cart-details th {
    background-color: #f2f2f2;
}

.form-control {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    text-align: center;
    cursor: pointer;
    border-radius: 4px;
    border: none;
    color: #fff;
    background-color: #5cb85c;
}

.btn hover {
    background-color: #4cae4c;
}

    .overlap{
     position: absolute;
     width: 1490px;
     height: 103px;
     top: 0;
     left: 0;
     background: linear-gradient(180deg, rgb(34, 193, 195) 0%, rgb(252, 187, 45) 100%);
    }

    .text-wrapper{
     position: absolute;
     width: 237px;
     top: 18px;
     left: 601px;
     font-family: Arial, Helvetica, sans-serif;
     font-weight: 400;
     color: #000000;
     font-size: 50px;
     letter-spacing: 0;
     line-height: normal;
    }

    .vector{
    position: absolute;
    width: 72px;
    height: 69px;
    top: 125px;
    left: 28px;
    }
    </style>

    
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlap"><div class="text-wrapper">MakeMeUpzz</div></div>
        <a href="Home.aspx"><img class="vector" src="../Img/Vector.png" /></a>
        <div class="container">
            <h1>Checkout</h1>
            <div class="cart-details">
                <asp:Repeater ID="rptCartItems" runat="server">
                    <HeaderTemplate>
                        <table>
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ProductName") %></td>
                            <td><%# Eval("Quantity") %></td>
                            <td><%# Eval("Price", "{0:C}") %></td>
                            <td><%# Eval("Total", "{0:C}") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                            </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <div class="order-summary">
                <h2>Order Summary</h2>
                <p>Subtotal: <asp:Label ID="lblSubtotal" runat="server" Text="$0.00"></asp:Label></p>
                <p>Tax: <asp:Label ID="lblTax" runat="server" Text="$0.00"></asp:Label></p>
                <p>Total: <asp:Label ID="lblTotal" runat="server" Text="$0.00"></asp:Label></p>
            </div>
            <div class="payment-details">
                <h2>Payment Details</h2>
                <label for="cardNumber">Card Number:</label>
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="expiryDate">Expiry Date:</label>
                <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="cvv">CVV:</label>
                <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="SumbitBtn" runat="server" Text="Complete Purchase" class="btn"/>
         </div>
    </form>
</body>
</html>
