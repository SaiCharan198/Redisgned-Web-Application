<!-- <form method="link" action="logoutp.jsp">
        <input type="submit" value="logout">-->

    <script type="text/javascript">
        function txtnull(txt)
        {

        var a=txt.value;
            if(a=="")
          {
                alert("insert data");

        }
     }
     function sum(txt)
     {
     var txtFirstnumberValue = parseint(document.getElementById('txt1').value);
     var txtSecondnumberValue = parseint(document.getElementById('txt2').value);
     var result = parseint(txtFirstnumberValue) * parseint(txtSecondnumberValue);
     if(!isNULL(result))
         {
         document.getElementById('txt3').value = result;
            }
     }

    </script>
</head>
<body>
    <!--<p>
    <img src="E:\project\web\images/b.jpg"></p> -->
   <div id="content">

        <!-- header begins -->
       <div id="headertop">



        </div>
        <!-- header ends -->
        <!-- content begins -->
        <div id="main">
           <!-- <div id="leftcon" >-->
    <table width="379" height="277" border="0" style="margin-left:150px"  >
       <form action="save_inv.jsp" method="post">

       <tr>
           <td></td>
           <td></td>
       </tr>
           <tr>
               <td width="181">
               <font color="#000000">DATE::</font>
               </td>
           <td width="174">
               <input type="text" name="date" size="+30" value="<%= new java.util.Date() %>" />                   </td>
      </tr>
            <tr>
                <td>
                    <font color="#000000"> ZONE_NO::</font>
              </td>
                    <td>
                <select id="text" name="type"  ><br />
                         <option value="r1" >r1</option>
                         <option value="m1" >m1</option>
                         <option value="b1" >b1</option>
                </select>
                </td>
      </tr> <br />

           <tr>















          <
           <tr><td> 
                  <font color="#000000">PROUDCT_PRICE::</font></td><td><input type="text1" name="product_price" size="+30" onBlur="txtnull(product_price)" onBlur="sum(product_price)" >
            </td></tr> <br />
             <tr><td>
                <font color="#000000">QUENTITY::</font></td><td><input type="text2" name="total_quentity" size="+30" onBlur="txtnull(total_quentity)" onBlur="sum(total_quentity)" />
            </td></tr><br />
            <tr><td>
                  <font color="#000000">REMINING QUENTITY::</font></td><td><input type="text" name="remining_quentity" size="+30" onBlur="txtnull(remining_quentity)">
              </td></tr> <br />
           <tr><td> 
                     <font color="#000000">TOTAL_AMOUNT::</font></td><td><input type="text3" name="total_amount" size="+30" onBlur="txtnull(total_amount)" onBlur="sum(total_amount)" ></td></tr> <br />
           <tr>
             <td>

               <div align="right">
                 <input name="button" type="submit"  value="SAVE" align="center" />
               </div>
             <td><input name="button" type="submit"  value="SEARCH" align="center" />
          <!--   <input name="button" type="submit" value="DELETE" align="center"  />-->
           <!--  <input name="button" type="submit" value="BACK" align="center"  />--></td>
           <tr><br />
       </table>


</body>