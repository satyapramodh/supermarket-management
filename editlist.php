<?php 
	require_once("include/header.php");
?>
<div id="body">
	<?php include_once("include/left_content.php"); ?>
    <div class="rcontent">
    
      <?php
		//product start
	  if(!strcmp(strtolower($_GET['name']),"product") & isset($_GET['success'])){
				$result=mysql_query("update product set product_name='{$_POST['product_name']}',cost_price={$_POST['cprice']},supplier_id={$_POST['supplier']},quantity={$_POST['quantity']},product_type='{$_POST['product_type']}',market_price={$_POST['mprice']} where product_id='{$_POST['product_id']}'");
				if(!$result)echo "Addition not successful ".mysql_error();
	   			else echo"<h1><span>Editting of product data successful</span></h1>";
			}
			else{
	   if(isset($_GET['name'])&isset($_GET['id'])){
		//product
		if(!strcmp(strtolower($_GET['name']),"product")){
			echo"<h1><span>Edit ".ucfirst($_GET['name'])."</span></h1>";
			echo"<div id='data'>";
			
			
				$plist=mysql_query("select * from product where product_id='{$_GET['id']}'");
				$plist=mysql_fetch_array($plist);
			echo "<form method='post' action='editlist.php?name=product&success=1'>
					  <table>
					    <tr><td style='padding:5px'>Product Name: </td><td><input name='product_name' type='text' value='{$plist['product_name']}' /></td></tr>
						<input type='hidden' name='product_id' value='{$plist['product_id']}' />
						<tr><td style='padding:5px'>Product type: </td>
						<td><select name='product_type'>";
						
						$dept_set = mysql_query("select dept_id, dept_name from department");
				while($row = mysql_fetch_array($dept_set))
					if($row['dept_id']==$plist['product_type']) echo "<option value='{$row['dept_id']}' selected='selected'>{$row['dept_name']}</option>";
					else echo "<option value='{$row['dept_id']}'>{$row['dept_name']}</option>";
																	
					echo"</select>
						</td></tr>
						<tr><td style='padding:5px'>Supplier ID: </td>
						<td><select name='supplier'>";
						
						$supplier_set = mysql_query("select sid, sname from supplier");
				while($row = mysql_fetch_array($supplier_set))
					if($row['sid']==$plist['supplier_id']) echo "<option value='{$row['sid']}' selected='selected'>{$row['sname']}</option>";
					else echo "<option value='{$row['sid']}'>{$row['sname']}</option>";
						
						echo"</select></td></tr>
						<tr><td style='padding:5px'>Quantity: </td><td><input name='quantity' type='text' value='{$plist['quantity']}' /></td></tr>
						<tr><td style='padding:5px'>Market Price: </td><td><input name='mprice' type='text' value='{$plist['market_price']}' /></td></tr>
						<tr><td style='padding:5px'>Cost Price: </td><td><input name='cprice' type='text' value='{$plist['cost_price']}' /></td></tr>
						<tr><td style='padding:5px' colspan='2'><input type='submit' value='submit' /></td></tr>
					  </table></form>";
			echo"</div>";
			}
		}
	  }//product end
	  //supplier start
	  	  if(!strcmp(strtolower($_GET['name']),"supplier") & isset($_GET['success'])){
				$result=mysql_query("update supplier set sname='{$_POST['name']}',saddress='{$_POST['address']}',sdealer='{$_POST['dealer']}',sphone={$_POST['phone']},semail='{$_POST['email']}' where sid='{$_POST['sid']}'");
				if(!$result)echo "Addition not successful ".mysql_error();
	   			else echo"<h1><span>Editting of supplier data successful</span></h1>";
			}
			else{
	   if(isset($_GET['name'])&isset($_GET['id'])){
		//supplier
		if(!strcmp(strtolower($_GET['name']),"supplier")){
			echo"<h1><span>Edit ".ucfirst($_GET['name'])."</span></h1>";
			echo"<div id='data'>";
			
			
				$plist=mysql_query("select * from supplier where sid='{$_GET['id']}'");
				$plist=mysql_fetch_array($plist);
			echo "<form method='post' action='editlist.php?name=supplier&success=1'>
					  <table>
					    <tr><td style='padding:5px'>Name: </td><td><input name='name' type='text' value='{$plist['sname']}' /></td></tr>
						<tr><td style='padding:5px'>Address: </td><td><input name='address' type='text' value='{$plist['saddress']}' /></td></tr>
						<tr><td style='padding:5px'>Dealer: </td><td><input name='dealer' type='text' value='{$plist['sdealer']}' /></td></tr>
						<tr><td style='padding:5px'>Phone: </td><td><input name='phone' placeholder='+91..' type='text' value='{$plist['sphone']}'/></td></tr>
						<input type='hidden' value='{$_GET['id']}' name='sid' />
						<tr><td style='padding:5px'>Email: </td><td><input name='email' placeholder='name@email.com' type='text' value='{$plist['semail']}'/></td></tr>
						<tr><td style='padding:5px' colspan='2'><input type='submit' value='submit' /></td></tr>
					  </table></form>";
			echo"</div>";
			}
		}
	  }//supplier end
	  //customer start
	  	  if(!strcmp(strtolower($_GET['name']),"customer") & isset($_GET['success'])){
				$result=mysql_query("update customer set first_name='{$_POST['fname']}',last_name='{$_POST['lname']}',caddress='{$_POST['caddress']}',cphone={$_POST['cphone']} where cid='{$_POST['cid']}'");
				if(!$result)echo "Addition not successful ".mysql_error();
	   			else echo"<h1><span>Editting of customer data successful</span></h1>";
			}
			else{
	   if(isset($_GET['name'])&isset($_GET['id'])){
		//customer
		if(!strcmp(strtolower($_GET['name']),"customer")){
			echo"<h1><span>Edit ".ucfirst($_GET['name'])."</span></h1>";
			echo"<div id='data'>";
			
			
				$plist=mysql_query("select * from customer where cid='{$_GET['id']}'");
				$plist=mysql_fetch_array($plist);
			echo "<form method='post' action='editlist.php?name=customer&success=1'>
					  <table>
						<tr><td style='padding:5px'>First Name: </td><td><input name='fname' type='text' value='{$plist['first_name']}'/></td></tr>
						<tr><td style='padding:5px'>Last Name: </td><td><input name='lname' type='text' value='{$plist['last_name']}'/></td></tr>
						<tr><td style='padding:5px'>Address: </td><td><input name='caddress' type='text' value='{$plist['caddress']}' /></td></tr>					
						<input type='hidden' name='cid' value='{$_GET['id']}' />		 			
						<tr><td style='padding:5px'>Phone no.</td><td><input type='text' placeholder='+91..' name='cphone' value='{$plist['cphone']}'/></td></tr>
						<tr><td colspan='2'><input type='submit' value='submit' /></td></tr>
					</table></form>";
			echo"</div>";
			}
		}
	  }//customer end
	  ?>
       
    </div>
</div>
<!-- body ends -->
<?php 
	require_once("include/footer.php");
?>