package br.edu.infnet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import br.edu.infnet.domain.Usuario;
import br.edu.infnet.service.UsuarioService;

@Component
public class Data implements ApplicationRunner {

    @Autowired
    private UsuarioService usuarioService;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        Usuario usuario = new Usuario();
        usuario.setNome("Admin");
        usuario.setEmail("admin@gmail.com");
        usuario.setSenha("admin");
        usuario.setAdmin(true);

        usuarioService.incluir(usuario);

        System.out.println("Inclusão realizada!!!");
    }
}