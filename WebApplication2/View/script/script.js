//impedir caracteres invalidos no campo nome

var objTextName1 = document.getElementById("CampoNome");
var regex = /^[a-zA-Z\s]+$/;

objTextName1.addEventListener("input", function validar() {

	var texto = objTextName1.value;
	console.log(texto);
	var isMatch = regex.test(texto);

	if (!isMatch) {
		objTextName1.value = "";

	}


});


// impedir caracteres invalidos no campo CPF e validar valor




function mascaraCPF(cpf) {

	cpf = cpf.replace(/\D/g, ""); // remove todos os caracteres não numéricos
	cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
	cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
	cpf = cpf.replace(/(\d{3})(\d{1,2})$/, "$1-$2");
	return cpf;
}

let campoCPF = document.getElementById("CampoCPF");

campoCPF.addEventListener("input", function (e) {
	let cpf = e.target.value.replace(/\D/g, "");
	if (cpf.length === 11) {
		if (validarCPF(cpf)) {
			cpf = mascaraCPF(cpf);
			e.target.value = cpf;
		} else {
			alert("CPF inválido");
			e.target.value = "";
		}
	}
});

campoCPF.addEventListener("keypress", function (e) {
	if (!/[0-9]/.test(String.fromCharCode(e.keyCode))) {
		e.preventDefault();
	}
});

function validarCPF(cpf) {
	cpf = cpf.replace(/[^\d]+/g, '');
	if (cpf == '') return false;
	// Elimina CPFs invalidos conhecidos	
	if (cpf.length != 11 ||
		cpf == "00000000000" ||
		cpf == "11111111111" ||
		cpf == "22222222222" ||
		cpf == "33333333333" ||
		cpf == "44444444444" ||
		cpf == "55555555555" ||
		cpf == "66666666666" ||
		cpf == "77777777777" ||
		cpf == "88888888888" ||
		cpf == "99999999999")
		return false;
	// Valida 1o digito	
	add = 0;
	for (i = 0; i < 9; i++)
		add += parseInt(cpf.charAt(i)) * (10 - i);
	rev = 11 - (add % 11);
	if (rev == 10 || rev == 11)
		rev = 0;
	if (rev != parseInt(cpf.charAt(9)))
		return false;
	// Valida 2o digito	
	add = 0;
	for (i = 0; i < 10; i++)
		add += parseInt(cpf.charAt(i)) * (11 - i);
	rev = 11 - (add % 11);
	if (rev == 10 || rev == 11)
		rev = 0;
	if (rev != parseInt(cpf.charAt(10)))
		return false;
	return true;
}



//validar confirmação de senha



function validarSenha() {
	var senha = document.getElementById("password").value;
	var confirmaSenha = document.getElementById("confirm_password").value;
	console.log(senha);
	console.log(confirmaSenha);

	if (senha != confirmaSenha) {
		alert("As senhas informadas não são iguais.");
	}
}


//validar telefone

function formatarTelefone(telefone) {
	// Remove tudo que não é número
	var numero = telefone.value.replace(/\D/g, '');

	// Formatação do telefone: (XX) 9XXXX-XXXX
	var regex = /^(\d{2})(\d{1})(\d{4})(\d{4})$/;
	var telefoneFormatado = numero.replace(regex, '($1) $2$3-$4');

	// Atualiza o valor do campo de telefone
	telefone.value = telefoneFormatado;
}