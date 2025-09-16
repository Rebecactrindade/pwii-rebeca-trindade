echo OFF

echo ----- Instalar dependências composer -----
call composer install

echo ----- Instlar dependências npm -----
call npm install



echo ----- Rodar npm run build ------
call npm run build

echo ----- Gerar chave aleatória pelo Artisan -----
call php artisar key:generate

echo ----- Migrar banco de dados pelo Artisan -----
call php artisan migrate

echo ----- Rodar server do projeto -----
call composer run dev 

pause