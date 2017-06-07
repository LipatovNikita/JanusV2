package topprogersgroup.service.Impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.CurrentUser;
import topprogersgroup.entity.User;
import topprogersgroup.service.UserService;

@Service
public class CurrentUserDetailsService implements UserDetailsService {

   @Autowired
   private UserService userService;

    public CurrentUser loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userService.getUserByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Пользователь с таким адресом электронной почты не найден"));
        return new CurrentUser(user);
    }
}
