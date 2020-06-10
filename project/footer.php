<div class="footer">
	<div class="wrap">
			<div class="footer-top" >
				


                <div class="col_1_of_4 span_1_of_4" >
					<div class="footer-nav">
		                <ul >
		                   <li><a href="index.php" style="color: black;">Home</a></li>
			  		   <li><a href="movies_events.php" style="color: black;">Movies</a></li>
			  		   <li><a href="login.php" style="color: black;">Login</a></li>
		                   </ul>
		              </div>
				</div>
                <div class="col_1_of_4 span_1_of_4" style="padding-top: 0px;">
                    <div class="footer-nav" >
                        
                    <h5 class="fborder"><b>About</b></h5>
                       <p style="color: black;">Movie Ticket Purchase System, owned and operated by Isrut Jahan Zinnia, is a premium online and on-demand service provider committed to make your life convenient, easier and smarter.</p>

                      </div>
                </div>
               
			
				<div class="col_1_of_4 span_1_of_4" style="padding-top: 0px; margin-left: 50px;">
                    <div class="footer-nav">
                       <h5 class="fborder"><b>Follow Us</b></h5>
                       <ul>
                           <li><a href="index.php" style="color: black;">Facebook</a></li>
                           <li><a href="movies_events.php" style="color: black;">Twitter</a></li>
                       
                           </ul>
                        
                   </div>
                    </div>
                    
 <div class="col_1_of_4 span_1_of_4" style="padding-top: 0px;margin-left: 50px;">
                    <div class="footer-nav" >
                        
                    <h5 class="fborder"><b>Privacy Note</b></h5>
                       <p style="color: black;">Terms & Conditions:<a class="link" href="privacy.php" target="_blank" > Privacy Policy </a> </p>

                       <div class="">
                       <p style="color: black;"><b> Phone: (+88) 01999043993<b></p>
                       </div>
                      </div>
                </div>


				<div class="clear"></div>


    






			</div>
		</div>
        <div class="footer2">
    <div class="wrap">
            <div class="footer-top" >
                <div class="text-center pt-3 pb-3">©2019 Movie Ticket Purchase System All rights reserved. Design & Developed By Isrut Jahan Zinnia</div>
</div> 
</div>
            </div>
	</div>




</body>
</html>

<style>
.content {
	padding-bottom:0px !important;
}
#form111 {
                width:500px;
                margin:50px auto;
}
#search111{
                padding:8px 15px;
                background-color:#fff;
                border:0px solid #dbdbdb;
}
#button111 {
                position:relative;
                padding:6px 15px;
                left:-8px;
                border:2px solid #3dc1d3;
                background-color:#3dc1d3;
                color:#fafafa;
}
#button111:hover  {
                background-color:#fafafa;
                color:#207cca;
}

</style>

<script src="js/auto-complete.js"></script>
 <link rel="stylesheet" href="css/auto-complete.css">
    <script>
        var demo1 = new autoComplete({
            selector: '#search111',
            minChars: 1,
            source: function(term, suggest){
                term = term.toLowerCase();
                <?php
						$qry2=mysqli_query($con,"select * from tbl_movie");
						?>
               var string="";
                <?php $string="";
                while($ss=mysqli_fetch_array($qry2))
                {
                
                $string .="'".strtoupper($ss['movie_name'])."'".",";
                //$string=implode(',',$string);
                
              
                }
                ?>
                //alert("<?php echo $string;?>");
              var choices=[<?php echo $string;?>];
                var suggestions = [];
                for (i=0;i<choices.length;i++)
                    if (~choices[i].toLowerCase().indexOf(term)) suggestions.push(choices[i]);
                suggest(suggestions);
            }
        });
    </script>