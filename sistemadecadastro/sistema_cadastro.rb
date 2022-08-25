# Cadastros
@cadastro_pessoas = [
    {nome: "Gabriel", telefone: "82999700404", endereco: "Rua Desportista Humberto Guimarães, 447", cpf: "096.229.924-39"},
    {nome: "João", telefone: "99999999", endereco: "Rua das montanhas, 101", cpf: "780.432.567-78"},
    {nome: "Pedro", telefone: "77777777", endereco: "Rua da Praia, 222", cpf: "124.345.347-89"},
]

# Todos os nomes cadastrados
def todos_os_cadastros
    @cadastro_pessoas.each do |cadastro|
        puts "Nome: #{cadastro[:nome]} - Telefone: #{cadastro[:telefone]} - Endereço: #{cadastro[:endereco]} - CPF: #{cadastro[:cpf]}"
    end
    puts "-----------------------"
end

# Adicionar um novo cadastro
def adiconar_cadastro
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp
    print "Endereço: "
    endereco = gets.chomp
    print "CPF: "
    cpf = gets.chomp

    @cadastro_pessoas << {nome: nome, telefone: telefone, endereco: endereco, cpf: cpf}
end

# Buscar um cadastro pelo nome
def buscar_cadastro_pelo_nome
    print "Digite o nome para consulta: "
    nome = gets.chomp
    @cadastro_pessoas.each do |cadastro|
        if cadastro[:nome].downcase.eql?(nome.downcase)
            puts "Nome: #{cadastro[:nome]} - Telefone: #{cadastro[:telefone]} - Endereço: #{cadastro[:endereco]} - CPF: #{cadastro[:cpf]}"
        break
        end
        puts "----------------"
    end
end

# Buscar cadastro pelo CPF
def buscar_cadastro_pelo_cpf
    print "Digite seu CPF completo para consulta: "
    cpf = gets.chomp
        @cadastro_pessoas.each do |cadastro| 
        if cadastro[:cpf].eql?(cpf) 
            puts "Nome: #{cadastro[:nome]} - Telefone: #{cadastro[:telefone]} - Endereço: #{cadastro[:endereco]} - CPF: #{cadastro[:cpf]}"
        
        break
        end
        puts "------------------------------------------"    
        
    end   
end

# Opção para buscar um cadastro por nome ou CPF
def buscar_por_nome_ou_cpf
    puts "------------------------------------------"
    puts " Digite uma das opções abaixo: "
    puts " "
    puts "1- Buscar cadastro pelo nome."
    puts "2- Buscar cadastro pelo CPF."
    opcao = gets.chomp.to_i
    
    case 
    when opcao == 1
        buscar_cadastro_pelo_nome
    when opcao == 2
        buscar_cadastro_pelo_cpf
    else
        puts "Opção inválida, tente novamente!"
    end

end

# Opção para editar um cadastro pelo nome ou pelo CPF
def editar_cadastro_por_nome_ou_cpf
    puts "------------------------------------------"
    puts " Digite uma das opções abaixo: "
    puts " "
    puts "1- Buscar cadastro pelo nome."
    puts "2- Buscar cadastro pelo CPF."
    opcao = gets.chomp

    case 
    when opcao == 1
        editar_cadastro_pelo_nome
    when opcao == 2
        editar_cadastro_pelo_cpf
    else
        puts "Opção inválida, tente novamente!"
    end
    
end

# Editar informações de um cadastro pelo nome
def editar_cadastro_pelo_nome
    print "Qual cadastro você deseja editar? "
    puts "Digite o nome abaixo: "
    nome = gets.chomp
    
    @cadastro_pessoas.each do |cadastro|
        if cadastro[:nome].downcase.include?(nome.downcase)
            puts "Nome: #{cadastro[:nome]} - Telefone: #{cadastro[:telefone]} - Endereço: #{cadastro[:endereco]} - CPF: #{cadastro[:cpf]}"
            print "Informe um novo nome (Se quiser manter o mesmo nome, aperte enter): "

            nome_salvo = cadastro[:nome]
            cadastro[:nome] = gets.chomp
            cadastro[:nome] = cadastro[:nome].empty? ? nome_salvo : cadastro[:nome]

            print "Infome um novo telefone (Se quiser manter o mesmo telefone, aperte enter): "
            telefone_salvo = cadastro[:telefone]
            cadastro[:telefone] = gets.chomp
            cadastro[:telefone] = cadastro[:telefone].empty? ? telefone_salvo : cadastro[:telefone]

            print "Informe o endereço (Se quiser manter o mesmo endereço, aperte enter): "
            endereco_salvo = cadastro[:endereco]
            cadastro[:endereco] = gets.chomp
            cadastro[:endereco] = cadastro[:endereco].empty? ? endereco_salvo : cadastro[:endereco]

            print "Informe o novo CPF (Se quiser manter o mesmo CPF, aperte enter): "
            cpf_salvo = cadastro[:cpf]
            cadastro[:cpf] = gets.chomp
            cadastro[:cpf] = cadastro[:cpf].empty? ? cpf_salvo : cadastro[:cpf]
        end
    end
end

# Editar informações de um cadastro pelo CPF
def editar_cadastro_pelo_cpf
    print "Qual cadastro você deseja editar? "
    puts "Digite o CPF abaixo: "
    cpf = gets.chomp

    @cadastro_pessoas.each do |cadastro|
        if cadastro[:cpf].include?(cpf) 
            puts "Nome: #{cadastro[:nome]} - Telefone: #{cadastro[:telefone]} - Endereço: #{cadastro[:endereco]} - CPF: #{cadastro[:cpf]}"
            print "Informe um novo nome (Se quiser manter o mesmo nome, aperte enter): "

            nome_salvo = cadastro[:nome]
            cadastro[:nome] = gets.chomp
            cadastro[:nome] = cadastro[:nome].empty? ? nome_salvo : cadastro[:nome]

            print "Infome um novo telefone (Se quiser manter o mesmo telefone, aperte enter): "
            telefone_salvo = cadastro[:telefone]
            cadastro[:telefone] = gets.chomp
            cadastro[:telefone] = cadastro[:telefone].empty? ? telefone_salvo : cadastro[:telefone]

            print "Informe o endereço (Se quiser manter o mesmo endereço, aperte enter): "
            endereco_salvo = cadastro[:endereco]
            cadastro[:endereco] = gets.chomp
            cadastro[:endereco] = cadastro[:endereco].empty? ? endereco_salvo : cadastro[:endereco]

            print "Informe o novo CPF (Se quiser manter o mesmo CPF, aperte enter): "
            cpf_salvo = cadastro[:cpf]
            cadastro[:cpf] = gets.chomp
            cadastro[:cpf] = cadastro[:cpf].empty? ? cpf_salvo : cadastro[:cpf]
        end
    end
end

# Remover cadastro
def remover_cadastro_pelo_nome
    print "Qual cadastro deseja remover?"
    puts "Digite o nome abaixo: "
    nome = gets.chomp

    @cadastro_pessoas.each do |cadastro|
        if cadastro[:nome].downcase.include?(nome.downcase)
            puts "Nome: #{cadastro[:nome]} - Telefone: #{cadastro[:telefone]} - Endereço: #{cadastro[:endereco]} - CPF: #{cadastro[:cpf]}"
            indice = @cadastro_pessoas.index(cadastro)
            @cadastro_pessoas.delete_at(indice)
            puts "Cadastro removido com sucesso!"
            puts " "
            break
        end
    end
end

# Remove o cadastro pelo CPF
def remover_cadastro_pelo_cpf
    print "Qual cadastro deseja remover? "
    puts "Digite o CPF abaixo."
    cpf = gets.chomp
    
    @cadastro_pessoas.each do |cadastro|
        if cadastro[:cpf].include? 
            puts "Nome: #{cadastro[:nome]} - Telefone: #{cadastro[:telefone]} - Endereço: #{cadastro[:endereco]} - CPF: #{cadastro[:cpf]}"
            indice = @cadastro_pessoas.index(cadastro)
            @cadastro_pessoas.delete_at(indice)
            puts "Cadastro removido com sucesso!"
            puts " "
            break
        end

    end
end
# Opção para remover o cadastro pelo nome ou pelo CPF
def remover_cadastro_pelo_nome_ou_cpf
    puts "------------------------------------------"
    puts " Digite uma das opções abaixo."
    puts " "
    puts "1- Remover cadastro pelo nome."
    puts "2- Remover cadastro pelo CPF."

    opcao = gets.chomp.to_i

    case 
    when opcao == 1
        remover_cadastro_pelo_nome
    when opcao == 2
        remover_cadastro_pelo_cpf
    else
        puts "Opção inválida, tente novamente!"
    end

end

loop do
    puts "Olá, seja bem vindo ao seu sistema de cadastros, por favor digite uma das opções abaixo."
    puts "1 - Ver todas os cadastros."
    puts "2 - Adicionar um novo cadastro."
    puts "3 - Buscar um cadastro específico."
    puts "4 - Editar informações de um cadastro."
    puts "5 - Remover um cadastro."
    puts "0 - Sair do sistema de cadastro."

    cadastro = gets.chomp.to_i
    case
    when cadastro == 0
        puts "Você saiu do sistema de cadastro, até breve!"
        break
    when cadastro == 1
        todos_os_cadastros
    when cadastro == 2
        adiconar_cadastro
    when cadastro == 3
        buscar_por_nome_ou_cpf
    when cadastro == 4
        editar_cadastro_por_nome_ou_cpf
    when cadastro == 5
        remover_cadastro_pelo_nome_ou_cpf
    else
        puts "Opção inválida, tente novamente!"
    end
end