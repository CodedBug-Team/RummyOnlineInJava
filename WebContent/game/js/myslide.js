/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



      

function clearText(field)
{
	field.value="";
	field.style.background="grey";
}
function validate(form)
{
	var i=0;
	name=form.name.value;
	pass=form.pass.value;
	if(name=="")
	{
	form.name.style.background="#272727";
	form.name.value="Required";
	i++;
	return false;
	}
	if(pass=="")
	{
	form.pass.style.background="#272727";
	i++;
	}


        if(i>0)
        return false;
	else
	return true;

}
function validate1(form)
{
	var j=0;
	cmpnynm=form.cmpnynm.value;
	email=form.email.value;
	if(cmpnynm=="")
	{
	form.cmpnynm.style.background="#272727";
	form.cmpnynm.value="Required";
	j++;
	return false;
	}
	if(email=="")
	{
	form.email.style.background="#272727";
	j++;
	}


        if(j>0)
        return false;
	else
	return true;

}