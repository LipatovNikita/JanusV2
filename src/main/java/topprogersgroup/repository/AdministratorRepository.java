package topprogersgroup.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import topprogersgroup.entity.Administrator;
import org.springframework.stereotype.Repository;

@Repository
public interface AdministratorRepository extends JpaRepository<Administrator, Integer> {
}
