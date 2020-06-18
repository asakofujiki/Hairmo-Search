$(document).on('turbolinks:load', function() {
	$('#hairdresser_postal_code').change(function(){
		// console.log($(this).val());
		if($(this).val()==''){
			$('#hairdresser_salon_address').val('');
		} else {
			if($(this).val().length==7){
				AjaxZip3.zip2addr(this,'','hairdresser[salon_address]','hairdresser[salon_address]');
			} else{
				$('#hairdresser_salon_address').val('');
			}
		}
	})
});