package pl.home.paymentsmanagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.home.paymentsmanagement.model.Person;
import pl.home.paymentsmanagement.repository.LoginRepository;
import pl.home.paymentsmanagement.security.LoginDetailsSecurity;

import java.util.Optional;


@Service
public class LoginDetailService implements UserDetailsService {

    @Autowired
    private LoginRepository loginRepository;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        Person person = loginRepository.getPersonByLogin(userName);

        if(person == null){
            throw new UsernameNotFoundException("Could not find");
        }

        return new LoginDetailsSecurity(person);

    }
}
