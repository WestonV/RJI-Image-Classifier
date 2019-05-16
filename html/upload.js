$(function() {

  // We can attach the `fileselect` event to all file inputs on the page
  $(document).on('change', ':file', function() {
    var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [numFiles, label]);
  });

  // We can watch for our custom `fileselect` event like this
   $(document).ready( function() {
      $(':file').on('fileselect', function(event, numFiles, label) {

      var input = $(this).parents('.input-group').find(':text'),
      log = numFiles > 1 ? numFiles + ' files selected' : label;

      if( input.length ) {
      input.val(log);
      } else {
      if( log ) alert(log);
      }

      });

      $("#image").on("change", function() {
         if ($("#image")[0].files.length > 10) {
            alert("You can select only 10 images at this time!");
            $("#image").val(""); 
         } 
         var selection = document.getElementById('image');
         
         for (var i = 0, j = selection.files.length; i < j; i++) {
            var file = selection.files[i].name;
            //var ext = file.value.match(/\.(.+)$/)[1];
            var extension = file.substr( (file.lastIndexOf('.') +1) );
            switch (extension) {
              case 'jpg':
              case 'jpeg':
                  break;
              default:
                  alert(extension + ' is not an allowed file type.');
                  $("#image").val("");
            }
            // do stuff with your file
         }


         //        var ext = this.value.match(/\.(.+)$/)[1];
         //      switch (ext) {
         //        case 'jpg':
         //        case 'jpeg':
         //            break;
         //        default:
         //            alert('This is not an allowed file type.');
         //            this.value = '';

      });
   });
  
});