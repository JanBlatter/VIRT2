# VIRT2
Mise en place de l'infrastructure


Prérequis : 
1x Proxmox 






#! /bin/bash


#Demande à l'utilisateur l'option
read -p "Bonjour, veuillez choisir une option (create, start, stop, destroy):" option

case "$option" in
    create)
        read -p "Combien d'instance (1,2,3) ?" choix
        case "$choix" in 
  
        1) #Création de 1 instance (1 kali et 1 pentester)
            echo "Container Kali 300 en cours de création ..."
						pct stop 200 > /dev/null
            pct clone 200 300 > /dev/null
						pct set 300 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.111/24
            echo "Container kali 300 Créé, son IP :192.168.3.111 , Login: root, mdp: Password"
            echo "Container Pentester 301 en cours de création ..."
						pct stop 201 > /dev/null
            pct clone 201 301 > /dev/null 
						pct set 301 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.121/24
            echo "Container Pentester 301 créé, son IP :192.168.3.121,Login: root, mdp: Password"
            ;;
        
        2) #Création de la 2ème instance 
            echo "Container Kali 300 en cours de création ..."
						pct stop 200 > /dev/null
            pct clone 200 300 > /dev/null
						pct set 300 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.111/24
            echo "Container kali 300 Créé, son IP : 192.168.3.111,Login: root, mdp: Password"
            echo "Container Pentester 301 en cours de création ..."
            pct stop 201 > /dev/null
            pct clone 201 301 > /dev/null 
						pct set 301 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.121/24
            echo "Container Pentester 301 créé, son IP : 192.168.3.121, Login: root, mdp: Password"

            echo "Container Kali 400 en cours de création ..."
						pct stop 200 > /dev/null
            pct clone 200 400 > /dev/null
						pct set 400 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.112/24
            echo "Container kali 400 Créé, son IP : 192.168.3.112, Login: root, mdp: Password"
            echo "Container Pentester 401 en cours de création ..."
						pct stop 201 > /dev/null
            pct clone 201 401 > /dev/null 
						pct set 401 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.122/24
            echo "Container Pentester 401 créé, son IP : 192.168.3.122, Login: root, mdp: Password"
            ;;
        3) # Création de la 1ère instance
             echo "Container Kali 300 en cours de création ..."
						pct stop 200 > /dev/null
            pct clone 200 300 > /dev/null
						pct set 300 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.111/24
            echo "Container kali 300 Créé, son IP : 192.168.3.111, Login: root, mdp: Password"
            echo "Container Pentester 301 en cours de création ..."
						pct stop 201 > /dev/null
            pct clone 201 301 > /dev/null 
						pct set 301 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.121/24
            echo "Container Pentester 301 créé, son IP : 192.168.3.121, Login: root, mdp: Password"

            # Création de la 2ème instance 
            echo "Container Kali 400 en cours de création ..."
            pct clone 200 400 > /dev/null
						pct set 400 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.112/24
            echo "Container kali 400 Créé, son IP : 192.168.3.112, Login: root, mdp: Password"
            echo "Container Pentester 401 en cours de création ..."
            pct clone 201 401 > /dev/null 
						pct set 401 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.122/24
            echo "Container Pentester 401 créé, son IP : 192.168.3.122, Login: root, mdp: Password"

            # Création de la 3ème instance 
           echo "Container Kali 500 en cours de création ..."
						pct clone 200 500 > /dev/null
						pct set 500 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.113/24
            echo "Container kali 500 Créé, son IP : 192.168.3.113, Login: root, mdp: Password"
            echo "Container Pentester 501 en cours de création ..."
            pct clone 201 501 > /dev/null 
						pct set 501 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.123/24
            echo "Container pentester 501 Créé, son IP : 192.168.3.123, Login: root, mdp: Password"
            ;;
        esac 
        
        ;;

			start)
				echo "Container Kali 300 démarre..."
				pct start 300 > /dev/null
				echo "Container kali 400 démarre ..." 
				pct start 400 > /dev/null
				echo "Container Kali 500 démarre ..."
				pct start 500 > /dev/null
				echo "Container Petenster 301 démarre ..."
				pct start 301 > /dev/null
				echo "Container Petenster 401 démarre ..."
				pct start 401 > /dev/null
				echo "Container Petenster 501 démarre ..."
				pct start 501 > /dev/null
        ;;
			stop)
				echo "Container Kali 300 en pause"
				pct stop 300 > /dev/null
				echo "Container kali 400 en pause" 
				pct stop 400 > /dev/null
				echo "Container Kali 500 en pause"
				pct stop 500 > /dev/null
				echo "Container Petenster 301 en pause"
				pct stop 301 > /dev/null
				echo "Container Petenster 401 en pause"
				pct stop 401 > /dev/null
				echo "Container Petenster 501 en pause"
				pct stop 501 > /dev/null
        ;;
			destroy)
				echo " shutdown en cours" 
				pct stop 300 > /dev/null
				pct stop 400 > /dev/null
				pct stop 500 > /dev/null
				pct stop 301 > /dev/null
				pct stop 401 > /dev/null
				pct stop 501 > /dev/null
				echo "Suppression des containers ..." 
				pct destroy 300 > /dev/null
				pct destroy 400 > /dev/null
				pct destroy 500 > /dev/null
				pct destroy 301 > /dev/null
				pct destroy 401 > /dev/null
				pct destroy 501 > /dev/null
				echo "Suppression des containers effectué avec succès."
		;;
    *)
    echo "Option invalide"
        ;;
        esac



Amélioration 
- Optimisation du code de la création avec des variables.
- Bloquer le ping
- 
