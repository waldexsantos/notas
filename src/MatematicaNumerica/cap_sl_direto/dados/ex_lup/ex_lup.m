A = [-1 2 -2;...
     3 -4 1;...
     1 -5 3]

disp("passo 1")     
P = eye(size(A))
U = A
L = eye(size(A))

disp("passo 2")
aux = P(1,:);
P(1,:)=P(2,:);
P(2,:)=aux 
     
aux = U(1,:);
U(1,:)=U(2,:);
U(2,:)=aux;

L(2:3,1)=U(2:3,1)/U(1,1)

U(2:3,:)-=U(2:3,1)/U(1,1)*U(1,:)

disp("passo 3")
aux = P(2,:);
P(2,:)=P(3,:);
P(3,:)=aux 

aux = L(2,1);
L(2,1) = L(3,1);
L(3,1) = aux;
     
aux = U(2,:);
U(2,:)=U(3,:);
U(3,:)=aux;

L(3,2)=U(3,2)/U(2,2)

U(3,:)-=U(3,2)/U(2,2)*U(2,:)
     


    



