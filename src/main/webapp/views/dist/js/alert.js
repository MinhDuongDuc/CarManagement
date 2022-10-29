function deleteWarning(path,id){
    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.isConfirmed) {
            window.location = "http://localhost:8080/" + path + id;
            Swal.fire(
                'Deleted!',
                'success'
            )
        }
      })
}
function successAlert(){
  Swal.fire(
    'Save successful',
    'success'
  )
}

var check = function() {
  if (document.getElementById('Password').value ==
    document.getElementById('Re-Password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
  }
}