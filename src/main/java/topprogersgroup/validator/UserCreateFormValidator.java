package topprogersgroup.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import topprogersgroup.entity.UserCreateForm;
import topprogersgroup.service.UserService;

@Component
public class UserCreateFormValidator implements Validator {

    @Autowired
    private UserService userService;

    public boolean supports(Class<?> clazz) {
        return clazz.equals(UserCreateForm.class);
    }

    public void validate(Object target, Errors errors) {
        UserCreateForm form = (UserCreateForm) target;
        validatePasswords(errors, form);
        validateEmail(errors, form);
    }

    private void validatePasswords(Errors errors, UserCreateForm form) {
        if (!form.getPassword().equals(form.getPasswordRepeated())) {
            errors.reject("password.no_match", "Пароли не совпадают");
        }
    }

    private void validateEmail(Errors errors, UserCreateForm form) {
        if (userService.getUserByEmail(form.getEmail()).isPresent()) {
            errors.reject("email.exists", "Пользователь с таким адресом электронной почты уже существует");
        }
    }
}
