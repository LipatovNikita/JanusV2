package topprogersgroup.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import topprogersgroup.entity.SpecialNotes;

@Repository
public interface SpecialNotesRepository extends JpaRepository<SpecialNotes, Integer> {
}
