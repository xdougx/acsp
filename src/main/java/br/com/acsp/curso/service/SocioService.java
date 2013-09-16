/**
 *
 */
package br.com.acsp.curso.service;

import br.com.acsp.curso.domain.Socio;
import br.com.acsp.curso.repository.SocioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * @author pedrosa
 */

@Service
public class SocioService extends AbstractService<Socio, Long> {

    @Autowired
    public void setRepository(SocioRepository repository) {
        super.repository = repository;
    }

    public Collection<Socio> listarOrdenado() {
        return ((SocioRepository) repository).listarOrdenadoPorNome();
    }

    public Collection<Socio> listarAtivos() {
        return ((SocioRepository) repository).listarAtivos();
    }
}
