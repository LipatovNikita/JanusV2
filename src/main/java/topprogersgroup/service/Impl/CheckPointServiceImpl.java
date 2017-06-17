package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.CheckPoint;
import topprogersgroup.repository.CheckPointRepository;
import topprogersgroup.service.CheckPointService;

import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
@Service
public class CheckPointServiceImpl implements CheckPointService {

    @Autowired
    CheckPointRepository checkPointRepository;

    @Override
    public CheckPoint save(CheckPoint checkPoint) {
        return checkPointRepository.save(checkPoint);
    }

    @Override
    public CheckPoint findOne(Integer id) {
        return checkPointRepository.findOne(id);
    }

    @Override
    public List<CheckPoint> findAll() {
        return checkPointRepository.findAll();
    }

    @Override
    public List<CheckPoint> findAllForPage(Pageable pageable) {
        return (List<CheckPoint>) checkPointRepository.findAll(pageable);
    }

    @Override
    public void delete(Integer id) {
        checkPointRepository.delete(id);
    }

    @Override
    public void delete(CheckPoint checkPoint) {
        checkPointRepository.delete(checkPoint);
    }
}
