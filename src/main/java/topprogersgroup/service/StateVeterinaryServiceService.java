package topprogersgroup.service;

import org.springframework.data.domain.Pageable;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.CheckPoint;
import topprogersgroup.entity.StateVeterinaryService;

import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
public interface StateVeterinaryServiceService  {

    StateVeterinaryService save(StateVeterinaryService stateVeterinaryService);

    StateVeterinaryService findOne(Integer id);

    List<StateVeterinaryService> findAllIsDeleted();

    List<StateVeterinaryService> findAllIsNotDeleted();

    void delete(StateVeterinaryService stateVeterinaryService);
}
