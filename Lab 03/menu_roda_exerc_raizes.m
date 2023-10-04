clc
printf ('Qual exercicio quer resolver?  \n')
printf ('1 - Resolver o problema  com  f(x) = sqrt(x) - 5*exp(-x); ;\n') 
printf ('2 - Resolver o problema  com  f(x) = x.^3- exp(x) \n') 
printf ('3 - Resolver o problema  com  f(x)= sin(x)- x^2 +1\n') 
printf ('0 - Sair.\n') 
op = input ('Agora digite sua opcao: ');

if (op==1)
%   f(x)     sqrt(x) - 5*exp(-x);
%   f'(x)= ( (0.5)*(x)^(-0.5) ) + 5*exp(-x);
    f1   =  @(x)   sqrt(x) - 5*exp(-x);
    df1  =  @(x) ((0.5)*(x)^(-0.5) ) + 5*exp(-x);
    printf('\n Resolvendo o problema com a funcao sqrt(x) - 5*exp(-x) \n')
   % bissecao 
    tol=0.1
    a=1.0
    b=2.0
    rb = bissecao(a, b, tol, f1)
    %
    % tangente
     printf('\n \n--- Resolvendo o problema  via TANGENTE ;:\n')
     xinicial = input ('digite o valor inicial : ');
     Numiter= 2
     raiz = tangente(xinicial, Numiter, f1, df1)
     % Tangente com tol
     tol=10^(-6);
     NumiterMax= 30;
     %[raiz, x, qteIter, distrel] = tangenteCOMPLETA(xinicial, tol,  NumiterMax, f1, df1)
     

     % Secante
     %xinicial1 = input ('digite o valor inicial 1: ');
     %xinicial2 = input ('digite o valor inicial 2: ');
     %[raiz, x, qteIter, distrel] = secante( xinicial1 , xinicial2, tol, NumiterMax,  f2)
endif

if (op==2)
   % f(x) = x.^3- exp(x);
    printf('\n=> Resolvendo o problema  com f(x)= x.^3- exp(x) :\n')
    f2  = @(x)   x.^3- exp(x);
    df2 = @(x)   3*x.^2- exp(x);
    % Tangente
    
    %
    % Secante
     %xinicial1 = input ('digite o valor inicial 1: ');
     %xinicial2 = input ('digite o valor inicial 2: ');
     %[raiz, x, qteIter, distrel] = secante( xinicial1 , xinicial2, tol, NumiterMax,  f2)
   
endif   %op 2

if (op==3)
     f  = @(x) sin(x) - x.^ 2 +1;
endif  %op 3
 
