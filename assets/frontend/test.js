const original_image = 'image1';
const replacement_image1 = 'image2';
const replacement_image2 = 'image2';
const replacement_image3 = 'image2';
const replacement_image4 = 'image2';
const replacement_image5 = 'image2';
document.getElementById('right_button').addEventListener('click',() => {
    console.log("Image remains same");
})
document.getElementById('wrong_button').addEventListener('click',() =>{
    const imgElement = document.getElementById('image1');
    if (imgElement.src.includes(original_image)) {
        imgElement.src = replacement_image1;
    } else if(imgElement.src.includes(replacement_image1)){
        imgElement.src = replacement_image2;
    } else if(imgElement.src.includes(replacement_image2)){
        imgElement.src = replacement_image3;
    } else if(imgElement.src.includes(replacement_image3)){
        imgElement.src = replacement_image4;
    } else if(imgElement.src.includes(replacement_image4)){
        imgElement.src = replacement_image5;
    }
})