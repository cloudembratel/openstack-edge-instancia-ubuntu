# openstack-edge-instancia-ubuntu <br>

Com esse codigo é possivel criar uma estrutura IaaC ( Infrastructure as a Code)  na Cloud Embratel baseada em Openstack ( Openstack Edge),<br> 
que cria componentes principais para uma arquitetura simples representada no desenho abaixo:
![Alt text](topologia_proposta.png)
<br>
<br>
Para utilizar esse projeto é necessario ter o terraform instalado na estação que o codigo ira rodar, para instalar e fazer o download utilize o site abaixo:<br>
https://developer.hashicorp.com/terraform/install  <br>
<br>
assim que clonar o projeto é possivel gerar chaves ssh para o seu projeto utilizando o script cria-chave.sh <br>
./cria-chave.sh<br>
<br>
na sequencia configure o arquivo terraform.tfvars com as credenciais referentes ao seu projeto: <br>
os_auth_url         = "https://identity.spo1.edge.embratel.cloud:5000/v3"<br>
os_username         = "Username1"       <br>
os_password         = "Password"        <br>
os_tenant_name      = "xxxxxxx-project" <br>
os_domain           = "xxxxxxx-domain"  <br>
os_region           = "spo1"            <br>
<br>
uma vez configurado vc pode editar o arquivo de variaveis variables.tf para editar variaveis como:<br>
-endereçamento de rede <br>
-endereço do gateway   <br>
-endereço da instancia <br>
<br>
assim que os pa rametros estiverem definidos é só iniciar o terraform e rodar o script: <br>
terraform init<br>
terraform plan<br>
teraform  apply<br>

quando a estrutura não for mais necessária é só rodar o script para destrui-la<br>
terraform destroy<br>


