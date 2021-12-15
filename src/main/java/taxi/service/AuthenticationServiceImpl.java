package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Logger logger = LogManager.getLogger(AuthenticationServiceImpl.class);
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            logger.warn("Authentication attempt failed. Params: login={}", login);
            throw new AuthenticationException("Login or password is incorrect");
        }
        logger.info("Authentication was successful. Params: login={}", login);
        return driver.get();
    }
}
