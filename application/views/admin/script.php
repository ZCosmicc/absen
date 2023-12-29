 
<!-- jQuery -->
<script src="<?= base_url()?>assets/admin/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?= base_url()?>assets/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Select2 -->
<script src="<?= base_url()?>assets/admin/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= base_url()?>assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="<?= base_url()?>assets/admin/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="<?= base_url()?>assets/admin/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="<?= base_url()?>assets/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="<?= base_url()?>assets/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?= base_url()?>assets/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?= base_url()?>assets/admin/plugins/moment/moment.min.js"></script>
<script src="<?= base_url()?>assets/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?= base_url()?>assets/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="<?= base_url()?>assets/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url()?>assets/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url()?>assets/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?= base_url()?>assets/admin/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url()?>assets/admin/dist/js/demo.js"></script>
<!-- Toastr -->
<script src="<?= base_url()?>assets/admin/plugins/toastr/toastr.min.js"></script>
 <script src="<?= base_url()?>assets/print.min.js"></script>

<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

});
</script>

<script>
	$(document).ready(function(){
		$('#kelas').change(function(){
			var cl_code = $(this).val();
			var date = $('#date').val()

			$.ajax({
				url: '<?php echo base_url(); ?>get/datasiswaabsen',
				type: 'post',
				data: {cl_code:cl_code, date:date},
				dataType: 'json',
				success: function(data)
				{
					$('#datakelas').html(data);
				},
				error:function()
				{
					alert('error');
				}
			})
		});
	});
</script>

<script>
	$(document).ready(function(){
		$('#kelas').change(function(){
			var cl_code = $(this).val();

			$.ajax({
				url: '<?php echo base_url(); ?>get/datasiswab',
				type: 'post',
				data: {cl_code:cl_code},
				dataType: 'json',
				success: function(data)
				{
					console.log(data);
					$('#datakelasb').html(data);
				},
				
			})
		});
	});
</script>

<script>
	$(document).ready(function(){
		$('#guru').change(function(){
			var cl_code = $(this).val();

			$.ajax({
				url: '<?php echo base_url(); ?>get/dataguru',
				type: 'post',
				data: {cl_code:cl_code},
				dataType: 'json',
				success: function(data)
				{
					console.log(data);
					$('#dataguru').html(data);
				},
				
			})
		});
	});
</script>

<script>
	$(document).ready(function(){
		var tombolcetak = document.getElementById('tombol-cetak');
		$('#kelash').change(function(){
			tombolcetak.style.display='block';

		});
	});
</script>

<script>
	$(document).ready(function(){
		var code = document.getElementById('bulan');
		var tombolcetak = document.getElementById('tombol-cetak');
		
		$('#dateb').change(function(){
			code.style.display='block';

		});

		$('#kelasb').change(function(){
			tombolcetak.style.display='block';
			var cl_codeb = $(this).val();
			var dateb = $('#dateb').val();

			$.ajax({
				url: '<?php echo base_url(); ?>get/data_bulan',
				type: 'post',
				data: {cl_codeb:cl_codeb, dateb:dateb},
				//dataType: 'json',
				success: function(data)
				{
					$('#daftar').html(data);
				},
				error:function()
				{
					alert('error');
				}
			})
		});
	});
</script>

<script>
	$(document).ready(function(){
		$('#kelash').change(function(){
			var cl_codeh = $(this).val();
			var dateh = $('#dateh').val();

			$.ajax({
				url: '<?php echo base_url(); ?>get/data_hari',
				type: 'post',
				data: {cl_codeh:cl_codeh, dateh:dateh},
				dataType: 'json',
				success: function(data)
				{
					$('#daftar').html(data);
				},
				error:function()
				{
					alert('error');
				}
			})
		});
	});
</script>

<script>
	$(document).ready(function(){
		var tombolcetak = document.getElementById('tombol-cetak');
		$('#kelass').change(function(){
			var cl_codes = $(this).val();
			var sem = $('#sem').val();
			var tp = $('#tp').val();
			tombolcetak.style.display='block';

			$.ajax({
				url: '<?php echo base_url(); ?>get/data_semester',
				type: 'post',
				data: {cl_codes:cl_codes, sem:sem, tp:tp},
				//dataType: 'json',
				success: function(data)
				{
					$('#daftar').html(data);
				},
				error:function()
				{
					alert('error');
				}
			})
		});
	});
</script>

<script>
	const flash_success = $('.flash_success').data('flash_success');
	if (flash_success) {
		toastr.success(flash_success)
	}
</script>

<script>
	const flash_error = $('.flash_error').data('flash_error');
	if (flash_error) {
		toastr.error(flash_error)
	}
</script>

</body>
</html>
