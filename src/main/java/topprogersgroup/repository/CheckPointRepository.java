package topprogersgroup.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import topprogersgroup.entity.CheckPoint;

/**
 * Created by aalle on 16.06.2017.
 */
public interface CheckPointRepository extends JpaRepository<CheckPoint, Integer> {
}
