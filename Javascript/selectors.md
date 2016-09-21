### Selection par id
$('#affectsouhait')

### Selection par type de balise et name
$('input[name=affectsouhait]');

### Selection par type de balise et name et statut checked
$('input[name=affectsouhait]:checked').get(0).value

### Option sélectionnée d'un select
$('#filtre-pave option:selected').val()
