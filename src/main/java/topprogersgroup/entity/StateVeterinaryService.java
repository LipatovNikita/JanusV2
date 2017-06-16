package topprogersgroup.entity;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;

//ГосВетСлужба
@Data
@Entity
@Table(name = "stateveterinaryservice")
public class StateVeterinaryService {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Column(name = "address")
    private String address;

    @Column(name = "isdeleted")
    @Type(type = "boolean")
    private boolean isDeleted;
}
