package topprogersgroup.service;

import topprogersgroup.entity.CheckPoint;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
public interface CheckPointService {

    CheckPoint save(CheckPoint checkPoint);

    CheckPoint findOne(Integer id);

    List<CheckPoint> findAll();

    List<CheckPoint> findAllForPage(Pageable pageable);

    void delete(Integer id);

    void delete(CheckPoint checkPoint);

}
