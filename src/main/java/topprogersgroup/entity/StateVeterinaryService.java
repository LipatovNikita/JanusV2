package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * Created by aalle on 09.06.2017.
 */
//ГосВетСлужба
@Data
@Entity
@Table(name = "stateVeterinaryService")
public class StateVeterinaryService {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;
}
