<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail Product.aspx.cs" Inherits="Project_PSD.View.Detail_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Product Detail</title>

    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    width: 80%;
    margin: 30px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.product-detail {
    display: flex;
    justify-content: space-between;
}

.product-images {
    width: 45%;
}

.product-images img {
    width: 100%;
    border: 1px solid #ddd;
    padding: 10px;
    background-color: #fff;
}

.product-info {
    width: 50%;
}

.product-info h1 {
    color: #333;
}

.product-info .price {
    font-size: 24px;
    color: #e67e22;
    margin: 20px 0;
}

.product-info .description {
    margin: 20px 0;
    color: #555;
}

.add-to-cart {
    margin-top: 20px;
}

.add-to-cart label {
    margin-right: 10px;
}

.form-control {
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    width: 50px;
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
}

.btn-primary {
    background-color: #5cb85c;
    position: absolute;
    background-color: #22c1c3;
    border-radius: 5px;
    font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-weight: 40;
    font-size: 30px;
    
}

.btn-primary:hover {
    background-color: #4cae4c;
}

.btn-secondary {
     position: absolute;
     left: 10px;
     background-color: #22c1c3;
     border-radius: 5px;
     font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
     font-weight: 40;
     font-size: 30px;
}

.btn-secondary:hover {
    background-color: #4cae4c;
}

 .div{
    background-color: #ffffff;
    
    width: 1550px;
    height: 1024px;
    position: relative;
}

  .overlap{
    position: absolute;
    width: 1500px;
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

  .container {
     width: 80%;
     margin: 155px auto;
     padding: 20px;
     background-color: #fff;
     box-shadow: 0 0 10px rgba(0,0,0,0.1);
 }

  .btn{
      margin: 25px auto;
  }
  
    </style>

    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlap"><div class="text-wrapper">MakeMeUpzz</div></div>
                <a href="Home.aspx"><img class="vector" src="../Img/Vector.png" /></a>

        <div class="container">
            <div class="product-detail">
                <div class="product-images">
                    <img id="mainImage" src="../Web Img/img-11.png" />
                    <!-- Thumbnails if any -->
                </div>
                <div class="product-info">
                    <h1>Lipstick</h1>
                    <p class="price">Rp. 10.000</p>
                    <p class="description">Lorem Ipsum</p>
                    <div class="add-to-cart">
                        <div> 
                         <label for="quantity">Quantity:</label>
                        <asp:TextBox ID="QuantityTxt" runat="server" Text="1" Class="form-control"></asp:TextBox>

                        </div>
                        
                        <div class="Btn">
                        <asp:Button ID="AddToCartBtn" runat="server" Text="Add To Cart" class="btn-primary" />
                        <asp:Button ID="Button1" runat="server" Text="Buy Now" class="btn-secondary" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

     </form>
</body>
</html>
