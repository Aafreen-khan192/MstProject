<html>
<head><title>Data Insertion</title> 
<script language="javascript">
            function display()
            { 
              
                 alert("Record inserted succesfully..");
           
   
              }
        </script>   
</head>
<body bgcolor="#F08080">
<center>
   
   <h2>Data Inquiry Form....</h2>
<br><br>
<table border=1>
<form method=post action=insertdata1.jsp>

<tr>
<th>Name</th>
<td><input type=text name=txtName placeholder="Enter  Name" </td>
</tr>
<tr>
<th> Aadhar Number</th>
<td>
<input type=number name=number1>
</td></tr>
<tr>
<th> MobileNumber</th>
<td>
<input type=number name=number2>
</td></tr>

<tr>
<th>fever in last seven days:</th>
<td>
Yes<input type=radio name=rd1 value=yes>
No<input type=radio name=rd1 value=no>
</td></tr
<tr>
<th>Cough and cold in last seven days:</th>
<td>
yes<input type=radio name=rd2 value=yes>
no<input type=radio name=rd2 value=no>
</td></tr>
<tr>
<th>Date of last foreign trip</th>
<td>
<input type=date name=dt1>
</td></tr>
<tr>
<td></td>
<td>
    <button type=submit formaction="index.html" > Back</button>
    <input type=submit value=Submit onclick="display()";>
<input type=reset value=Reset>
</td>
</tr>
</form>
</table>
</center>
</body>