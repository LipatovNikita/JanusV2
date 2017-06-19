package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Route;
import topprogersgroup.repository.RouteRepository;
import topprogersgroup.service.RouteService;

@Service
public class RouteServiceImpl implements RouteService {

    @Autowired
    private RouteRepository routeRepository;

    public void create(Route route) {
        routeRepository.save(route);
    }

    public void delete(Route route) {
        route.setDeleted(true);
        routeRepository.save(route);
    }

    public void edit(Route route) {
        routeRepository.save(route);
    }
}
