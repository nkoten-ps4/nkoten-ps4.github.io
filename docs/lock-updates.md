# Guia: Como Bloquear Atualizações de Sistema no PS4 com Jailbreak

Este guia reúne os métodos mais eficazes para impedir que o seu PS4 desbloqueado baixe e instale atualizações de firmware da Sony por acidente.

---

## 1. Desativar Downloads Automáticos no Sistema
O primeiro passo é configurar o próprio sistema do PS4 para não buscar atualizações sozinho.

*   Vá em **Configurações** > **Sistema** > **Downloads e uploads automáticos**.
*   Desmarque a opção **Arquivos de atualização do software do sistema**.
*   Desmarque também a opção **Instalar automaticamente**.

---

## 2. Bloquear Servidores da Sony via DNS (Recomendado)
Configurar um DNS bloqueador impede que o console se conecte aos servidores de atualização da Sony, mesmo se a internet estiver ligada.

1. Vá em **Configurações** > **Rede** > **Configurar conexão à Internet**.
2. Escolha **Wi-Fi** ou **Cabo de rede (LAN)** e selecione **Personalizada**.
3. Em *Configurações de endereço IP*, escolha **Automático**.
4. Em *Nome do host DHCP*, escolha **Não especificar**.
5. Em *Configurações de DNS*, mude para **Manual** e insira os IPs de bloqueio do seu host (como Al Azif ou o host que você utiliza). *(Exemplo clássico: Primário `165.227.83.145` / Secundário `192.241.221.79`)*.
6. Em *Configurações de MTU*, escolha **Automático**.
7. Em *Servidor proxy*, escolha **Não usar**.

---

## 3. Alterar o NP Environment (Via GoldHEN / Debug Settings)
Este método altera a "região" de rede do console, fazendo com que ele ignore a PSN padrão e os servidores de update comerciais.

1. Ative o **GoldHEN** no seu PS4.
2. Acesse as **Configurações** do console e role até o final para abrir as **Debug Settings**.
3. Navegue até **PlayStation Network** > **NP Environment**.
4. Altere o texto de `np` para `SP-INT` (tudo em maiúsculo).
5. Pressione **OK** e reinicie o seu console.

---

## 4. Proteção no Modo de Repouso
Para garantir que o console não baixe nada enquanto você não estiver jogando:

*   Vá em **Configurações** > **Configurações de economia de energia** > **Definir funções disponíveis no modo de repouso**.
*   Desmarque a opção **Manter conectado à Internet**.

---

## ⚠️ O que fazer se uma atualização já começou a baixar?
Se você vir uma notificação de download de firmware:
1. Vá imediatamente para o menu de **Notificações** > **Downloads**.
2. Selecione a atualização do PS4, pressione **Options** no controle e escolha **Cancelar e excluir**.

## DNS Nomadic
- DNS Primário: 62.210.38.117
- DNS Secundário: 0.0.0.0 (pode deixar zerado ou repetir o padrão 45.56.67.85)
