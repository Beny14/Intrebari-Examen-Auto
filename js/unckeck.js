function uncheckAll(f){
for (x = 0; x < f.elements.length; x++){
    if (f.elements[x].type == "radio"){
            f.elements[x].checked = false; 
        }
    }
}