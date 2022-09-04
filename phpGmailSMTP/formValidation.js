
const name = document.getElementById('name');
const mobile = document.getElementById('mobile');
const file = document.getElementById('file');
const error = document.getElementById('error');

form.addEventListener('submit', (e) => {
    let msg = [];
     var letters = /^[A-Za-z]+$/;
    e.preventDefault();
    if(name.value == '' || name.value == null) {
        msg.push('name is required');
    }
    if(!letters) {
      msg.push('Invalid name format. use letetrs ');
    }
    if (msg.length> 0) {
        e.preventDefault();
        error.innerText = msg.join(',') ;
    } 
    if(ld.value == '' || ld.value == null) {
        msg.push('Location Description is required');
    }
    if (msg.length> 0) {
        e.preventDefault();
        error.innerText = msg.join(',') ;
    } 

    if(mobile.value.length < 8 || mobile.value.length > 15) {
        msg.push('Invalid mobile number');
    }
    if(mobile.value == '' || mobile.value == null )  {
        msg.push('mobile Number is required');
    }

    const allowedExtensions =  ['jpg','png','jpeg','gif','tif', 'tiff'];
        sizeLimit = 2000000; // 1 megabyte

  // destructuring file name and size from file object
  const { name:fileName, size:fileSize } = this.files[0];

  /*
  * if filename is apple.png, we split the string to get ["apple","png"]
  * then apply the pop() method to return the file extension
  *
  */
  const fileExtension = fileName.split(".").pop();

  /* 
    check if the extension of the uploaded file is included 
    in our array of allowed file extensions
  */
  if(!allowedExtensions.includes(fileExtension)){
    msg.push("file type not allowed");
    this.value = null;
  }else if(fileSize > sizeLimit){
    msg.push("file size too large")
    this.value = null;
  }
    
})