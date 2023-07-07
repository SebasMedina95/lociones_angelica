<header class="main-header">
	<!--=====================================
	=         Logotipo del sistema          =
	======================================-->
	<a href="inicio" class="logo">
		
		<!--===========================
		=         Logo Mini          =
		============================-->
		<span class="logo-mini">
			<img src="vistas/img/plantilla/icono-blanco.png" class="img-responsive" style="padding:10px">
		</span>
		<!--===========================
		=         Logo Normal         =
		============================-->
		<span class="logo-lg">
			<img src="vistas/img/plantilla/logo-blanco-lineal.png" class="img-responsive" style="padding:10px 0px">
		</span>
	</a>
	<!--===========================
	=     Barra de Navegacion     =
	============================-->
	<nav class="navbar navbar-static-top" role="navigation">
		<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
			<span class="sr-only">Toggle navigation</span>
		</a>
		<!--===========================
		=      Perfil de Usuario      =
		============================-->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						
						<?php 
							if($_SESSION["foto"] != ""){
								echo '<img src="'.$_SESSION["foto"].'" class="user-image" alt="">';
							}else{
								echo '<img src="vistas/img/usuarios/default/anonymous.png" class="user-image" alt="">';
							}
						?>		
						<span class="hidden-xs"><?php echo $_SESSION["nombre"]; ?></span>
					<!--===========================
					=      Dropdown Toggle        =
					============================-->
					<ul class="dropdown-menu">
						<li class="user-body">
							<li class="user-header">
								<br>
								<center>
								<img src="<?php echo $_SESSION["foto"]; ?>" class="img-circle" alt="User Image" width="115px" higth="115px">
			                    <h5>
			                    <b><font color="white">Usuario:   </font></b><font color="d5d4d4"><?php echo $_SESSION['usuario']; ?></font><br>
			                    <b><font color="white">Cargo:     </font></b><font color="d5d4d4"><?php echo $_SESSION['perfil']; ?></font><br>
			                    <b><font color="white">   </font></b><font color="d5d4d4"><?php echo $_SESSION['nombre']; ?></font>
								</center>
			                    </h5>
			                  	</li>
								</a>
							<div class="pull-right">
								<a href="salir" class="btn btn-default btn-flat">Finalizar Sesión.</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		


	</nav>
	
	

</header>